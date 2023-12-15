import 'dart:async';

import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/entity_type_utils.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_switch_entity/generic_switch_entity.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/i_phone_as_hub.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class SwitchMolecule extends StatefulWidget {
  const SwitchMolecule(this.entity);

  final GenericSwitchDE entity;

  @override
  State<SwitchMolecule> createState() => _SwitchMoleculeState();
}

class _SwitchMoleculeState extends State<SwitchMolecule> {
  int sendNewColorEachMilliseconds = 200;
  Timer? timeFromLastColorChange;
  HSVColor? lastColoredPicked;

  Future<void> _changeAction(bool value) async {
    setEntityState(value ? EntityActions.on : EntityActions.off);
  }

  void setEntityState(EntityActions action) {
    final VendorsAndServices? vendor =
        widget.entity.cbjDeviceVendor.vendorsAndServices;
    if (vendor == null) {
      return;
    }

    IPhoneAsHub.instance.setEntityState(
      cbjUniqeId: widget.entity.deviceCbjUniqueId.getOrCrash(),
      vendor: vendor,
      property: EntityProperties.lightSwitchState,
      actionType: action,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    final deviceState = widget.entity.entityStateGRPC.getOrCrash();
    final deviceAction = widget.entity.switchState!.getOrCrash();

    bool toggleValue = false;
    Color toggleColor = Colors.blueGrey;

    if (deviceAction == EntityActions.on.toString()) {
      toggleValue = true;
      if (deviceState == EntityStateGRPC.ack.toString()) {
        toggleColor = const Color(0xFFFFDF5D);
      }
    } else {
      if (deviceState == EntityStateGRPC.ack.toString()) {
        toggleColor = Theme.of(context).primaryColorDark;
      }
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: sizeBoxWidth + 15,
      child: FlutterSwitch(
        width: screenSize.width * 0.25,
        height: screenSize.height * 0.0655,
        toggleSize: screenSize.height * 0.0655,
        value: toggleValue,
        borderRadius: 25.0,
        padding: 0.0,
        activeToggleColor: const Color(0xFF2F363D),
        inactiveToggleColor: Colors.deepPurple,
        activeSwitchBorder: Border.all(
          color: Theme.of(context).textTheme.bodyLarge!.color!,
        ),
        inactiveSwitchBorder: Border.all(
          color: Theme.of(context).textTheme.bodyLarge!.color!,
        ),
        activeColor: toggleColor,
        inactiveColor: toggleColor,
        activeIcon: Icon(
          MdiIcons.lightSwitch,
          color: Colors.white,
        ),
        inactiveIcon: Icon(
          MdiIcons.lightSwitch,
          color: Colors.white70,
        ),
        onToggle: (bool value) => _changeAction(value),
      ),
    );
  }
}
