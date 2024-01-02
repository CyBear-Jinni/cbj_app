import 'dart:async';
import 'dart:collection';

import 'package:cbj_integrations_controller/domain/core/request_types.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/entity_type_utils.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_smart_plug_entity/generic_smart_plug_entity.dart';
import 'package:cybearjinni/domain/connections_service.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:flutter/material.dart';

/// Show smartPlug toggles in a container with the background color from smart area
/// object
class SmartPlugsMolecule extends StatefulWidget {
  const SmartPlugsMolecule(this.entity);

  final GenericSmartPlugDE entity;

  @override
  State<SmartPlugsMolecule> createState() => _SmartPlugsMoleculeState();
}

class _SmartPlugsMoleculeState extends State<SmartPlugsMolecule> {
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
    final HashMap<VendorsAndServices, HashSet<String>> uniqueIdByVendor =
        HashMap();
    uniqueIdByVendor.addEntries(
      [
        MapEntry(
          vendor,
          HashSet<String>()
            ..addAll([widget.entity.deviceCbjUniqueId.getOrCrash()]),
        ),
      ],
    );
    ConnectionsService.instance.setEntityState(
      uniqueIdByVendor: uniqueIdByVendor,
      property: EntityProperties.lightSwitchState,
      actionType: action,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DeviceNameRow(
      widget.entity.cbjEntityName.getOrCrash()!,
      SwitchAtom(
        variant: SwitchVariant.smartPlug,
        onToggle: _changeAction,
        action: widget.entity.smartPlugState.action,
        state: widget.entity.entityStateGRPC.state,
      ),
    );
  }
}
