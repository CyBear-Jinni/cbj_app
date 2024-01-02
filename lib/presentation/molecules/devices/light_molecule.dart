import 'dart:collection';

import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/domain/connections_service.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:flutter/material.dart';

/// Show light toggles in a container with the background color from smart area
/// object
class LightMolecule extends StatelessWidget {
  const LightMolecule(this.entity);

  final GenericLightDE entity;

  void _onChange(bool value) {
    setEntityState(value ? EntityActions.on : EntityActions.off);
  }

  void setEntityState(EntityActions action) {
    final VendorsAndServices? vendor =
        entity.cbjDeviceVendor.vendorsAndServices;
    if (vendor == null) {
      return;
    }

    final HashMap<VendorsAndServices, HashSet<String>> uniqueIdByVendor =
        HashMap();
    uniqueIdByVendor.addEntries(
      [
        MapEntry(
          vendor,
          HashSet<String>()..addAll([entity.deviceCbjUniqueId.getOrCrash()]),
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
      entity.cbjEntityName.getOrCrash()!,
      SwitchAtom(
        variant: SwitchVariant.light,
        onToggle: _onChange,
        action: entity.lightSwitchState.action,
        state: entity.entityStateGRPC.state,
      ),
    );
  }
}
