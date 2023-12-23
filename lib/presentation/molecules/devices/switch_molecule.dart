import 'dart:async';
import 'dart:collection';

import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/entity_type_utils.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_switch_entity/generic_switch_entity.dart';
import 'package:cybearjinni/domain/connections_service.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';

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
    return SwitchAtom(
      variant: SwitchVariant.switchVariant,
      onToggle: _changeAction,
      action: widget.entity.switchState.action,
      state: widget.entity.entityStateGRPC.state,
    );
  }
}
