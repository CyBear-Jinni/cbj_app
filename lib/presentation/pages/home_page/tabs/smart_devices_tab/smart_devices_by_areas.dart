import 'dart:async';
import 'dart:collection';

import 'package:cbj_integrations_controller/domain/area/area_entity.dart';
import 'package:cbj_integrations_controller/domain/area/value_objects_area.dart';
import 'package:cbj_integrations_controller/domain/core/request_types.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybearjinni/domain/connections_service.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/snack_bar_service.dart';
import 'package:cybearjinni/presentation/organisms/organisms.dart';
import 'package:cybearjinni/presentation/pages/home_page/tabs/smart_devices_tab/areas_widgets/areas_list_view_widget.dart';
import 'package:flutter/material.dart';

class SmartDevicesByAreas extends StatefulWidget {
  @override
  State<SmartDevicesByAreas> createState() => _SmartDevicesByAreasState();
}

class _SmartDevicesByAreasState extends State<SmartDevicesByAreas> {
  HashMap<String, AreaEntity> areas = HashMap();
  HashMap<String, DeviceEntityBase> devices = HashMap();

  @override
  void initState() {
    super.initState();
    addDiscoveredArea();
    _watchEntities();
  }

  @override
  void dispose() {
    entitiesStream?.cancel();
    super.dispose();
  }

  void addDiscoveredArea() {
    final AreaEntity discoveredArea = AreaEntity(
      uniqueId: AreaUniqueId.discovered(),
      cbjEntityName: AreaDefaultName('Discovered'),
      areaTypes: AreaTypes(const {}),
      areaDevicesId: AreaDevicesId(const {}),
      areaScenesId: AreaScenesId(const {}),
      areaRoutinesId: AreaRoutinesId(const {}),
      areaBindingsId: AreaBindingsId(const {}),
      areaMostUsedBy: AreaMostUsedBy(const {}),
      areaPermissions: AreaPermissions(const {}),
      background: AreaBackground(
        'https://images.pexels.com/photos/459654/pexels-photo-459654.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
      ),
    );
    areas[AreaUniqueId.discovered().getOrCrash()] = discoveredArea;
  }

  StreamSubscription<MapEntry<String, DeviceEntityBase>>? entitiesStream;

  Future _watchEntities() async {
    await entitiesStream?.cancel();

    entitiesStream = ConnectionsService.instance
        .watchEntities()
        .listen((MapEntry<String, DeviceEntityBase> entityEntery) {
      if (!mounted ||
          supportedDeviceType(entityEntery.value.entityTypes.type)) {
        return;
      }

      final AreaEntity? discoverArea = areas[AreaUniqueId.discovereId];

      if (discoverArea == null) {
        return;
      }
      discoverArea.addDeviceId(entityEntery.key);

      setState(() {
        areas[AreaUniqueId.discovered().getOrCrash()] = discoverArea;
        devices.addEntries([entityEntery]);
      });
    });
    _initialzeAreasAndDevices();
  }

  Future<void> _initialzeAreasAndDevices() async {
    final HashMap<String, DeviceEntityBase> allDevice =
        await ConnectionsService.instance.getAllEntities;

    final HashMap<String, DeviceEntityBase> supportedEntities =
        getSupportedEnities(allDevice);
    final AreaEntity? tempDiscoverArea =
        areas[AreaUniqueId.discovered().getOrCrash()];
    if (tempDiscoverArea == null) {
      return;
    }
    for (final String deviceId in supportedEntities.keys) {
      tempDiscoverArea.addDeviceId(deviceId);
    }

    setState(() {
      areas[AreaUniqueId.discovered().getOrCrash()] = tempDiscoverArea;
      devices.addAll(supportedEntities);
    });
  }

  HashMap<String, DeviceEntityBase> getSupportedEnities(
    HashMap<String, DeviceEntityBase> entities,
  ) {
    entities.removeWhere(
      (key, value) => supportedDeviceType(value.entityTypes.type),
    );
    return entities;
  }

  bool supportedDeviceType(EntityTypes type) {
    return type == EntityTypes.smartTypeNotSupported ||
        type == EntityTypes.emptyEntity;
  }

  @override
  Widget build(BuildContext context) {
    if (devices.isEmpty || areas.isEmpty) {
      return GestureDetector(
        onTap: () {
          SnackBarService().show(
            context,
            'Add new device by pressing the plus button',
          );
        },
        child: EmptyOpenAreaOrganism(),
      );
    }

    final ThemeData themeData = Theme.of(context);
    final TextTheme textTheme = themeData.textTheme;
    final ColorScheme colorScheme = themeData.colorScheme;

    return SingleChildScrollView(
      reverse: true,
      child: Column(
        children: [
          TextAtom(
            'Areas',
            style:
                textTheme.headlineLarge!.copyWith(color: colorScheme.primary),
          ),
          const SeparatorAtom(variant: SeparatorVariant.farAppart),
          MarginedExpandedAtom(
            child: AreasListViewWidget(
              entities: devices,
              areas: areas,
            ),
          ),
        ],
      ),
    );
  }
}
