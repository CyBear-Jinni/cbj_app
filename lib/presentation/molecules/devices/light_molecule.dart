import 'dart:collection';

import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/entity_type_utils.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_light_entity/generic_light_entity.dart';
import 'package:cybearjinni/domain/connections_service.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';

/// Show light toggles in a container with the background color from smart room
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
    return SwitchAtom(
      variant: SwitchVariant.light,
      onToggle: _onChange,
      action: entity.lightSwitchState.action,
      state: entity.entityStateGRPC.state,
    );
  }
}
