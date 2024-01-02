import 'dart:collection';

import 'package:cbj_integrations_controller/domain/area/area_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybearjinni/presentation/pages/home_page/tabs/smart_devices_tab/areas_widgets/area_widget.dart';
import 'package:flutter/material.dart';

class AreasListViewWidget extends StatelessWidget {
  const AreasListViewWidget({
    required this.entities,
    required this.areas,
  });

  final HashMap<String, DeviceEntityBase> entities;
  final HashMap<String, AreaEntity> areas;

  HashMap<String, Set<String>> initialzeEntitiesByAreas() {
    final HashMap<String, Set<String>> devicesByAreas = HashMap();

    devicesByAreas.addAll(
      areas
          .map((key, value) => MapEntry(key, value.areaDevicesId.getOrCrash())),
    );
    return devicesByAreas;
  }

  @override
  Widget build(BuildContext context) {
    final HashMap<String, Set<String>> devicesByAreas =
        initialzeEntitiesByAreas();

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        final String areaId = devicesByAreas.keys.elementAt(index);
        final Set<String>? entitiesInTheArea = devicesByAreas[areaId];
        final AreaEntity? area = areas[areaId];

        if (entitiesInTheArea == null || area == null) {
          return const SizedBox();
        }

        return AreaWidget(
          area: area,
          areas: areas,
          entities: entities,
          entitiesInTheArea: entitiesInTheArea,
        );
      },
      itemCount: devicesByAreas.length,
    );
  }
}
