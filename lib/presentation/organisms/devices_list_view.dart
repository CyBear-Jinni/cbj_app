import 'dart:collection';

import 'package:cbj_integrations_controller/domain/core/request_types.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/entities_utils.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:flutter/material.dart';

class DevicesListView extends StatelessWidget {
  const DevicesListView(this.entities, this.onTap);

  final HashSet<DeviceEntityBase> entities;
  final Function(HashSet<EntityTypes>) onTap;

  HashSet<EntityTypes> getReleatedTypes(EntityTypes type) {
    if (type == EntityTypes.light ||
        type == EntityTypes.rgbLights ||
        type == EntityTypes.rgbwLights ||
        type == EntityTypes.cctLight ||
        type == EntityTypes.dimmableLight) {
      return HashSet.from({
        EntityTypes.light,
        EntityTypes.rgbLights,
        EntityTypes.rgbwLights,
        EntityTypes.cctLight,
        EntityTypes.dimmableLight,
      });
    }

    return HashSet.from({type});
  }

  HashMap<EntityTypes, HashSet<DeviceEntityBase>> geEntitiesByType() {
    final HashMap<EntityTypes, HashSet<DeviceEntityBase>> entitiesByType =
        HashMap();

    for (final DeviceEntityBase entity in entities) {
      final EntityTypes type = getReleatedTypes(entity.entityTypes.type).first;
      HashSet<DeviceEntityBase>? entitiesForType = entitiesByType[type];
      entitiesForType ??= HashSet();
      entitiesForType.add(entity);
      entitiesByType[type] = entitiesForType;
    }

    return entitiesByType;
  }

  @override
  Widget build(BuildContext context) {
    final HashMap<EntityTypes, HashSet<DeviceEntityBase>> entitiesByType =
        geEntitiesByType();

    return ListViewMolecule(
      ListViewVeriant.builder,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final EntityTypes type = entitiesByType.keys.elementAt(index);
        final HashSet<DeviceEntityBase>? entitiesForType = entitiesByType[type];

        if (entitiesForType == null) {
          return const SizedBox();
        }
        final int numberOfType = entitiesForType.length;
        final DeviceEntityBase firstEntityOfType = entitiesForType.first;

        String? headline;
        String? supportingText;

        if (numberOfType == 1) {
          headline = firstEntityOfType.cbjEntityName.getOrCrash();
          supportingText = firstEntityOfType.entityStateGRPC.getOrCrash();
        } else {
          headline = '$numberOfType ${type}s';
          supportingText = '';
        }

        return CardAtom(
          ListTileAtom(
            headline: headline,
            supportingText: supportingText,
            leadingIcon: EntitiesUtils.iconOfDeviceType(type),
            onTap: () {
              onTap(getReleatedTypes(type));
            },
          ),
        );
      },
      itemCount: entitiesByType.length,
    );
  }
}
