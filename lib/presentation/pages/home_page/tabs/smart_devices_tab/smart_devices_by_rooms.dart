import 'dart:async';
import 'dart:collection';

import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/domain/room/value_objects_room.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybearjinni/domain/connections_service.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/snack_bar_service.dart';
import 'package:cybearjinni/presentation/organisms/organisms.dart';
import 'package:cybearjinni/presentation/pages/home_page/tabs/smart_devices_tab/rooms_widgets/rooms_list_view_widget.dart';
import 'package:flutter/material.dart';

class SmartDevicesByRooms extends StatefulWidget {
  @override
  State<SmartDevicesByRooms> createState() => _SmartDevicesByRoomsState();
}

class _SmartDevicesByRoomsState extends State<SmartDevicesByRooms> {
  HashMap<String, RoomEntity> rooms = HashMap();
  HashMap<String, DeviceEntityBase> devices = HashMap();

  @override
  void initState() {
    super.initState();
    addDiscoveredRoom();
    _watchEntities();
  }

  @override
  void dispose() {
    entitiesStream?.cancel();
    super.dispose();
  }

  void addDiscoveredRoom() {
    final RoomEntity discoveredRoom = RoomEntity(
      uniqueId: RoomUniqueId.discovered(),
      cbjEntityName: RoomDefaultName('Discovered'),
      roomTypes: RoomTypes(const {}),
      roomDevicesId: RoomDevicesId(const {}),
      roomScenesId: RoomScenesId(const {}),
      roomRoutinesId: RoomRoutinesId(const {}),
      roomBindingsId: RoomBindingsId(const {}),
      roomMostUsedBy: RoomMostUsedBy(const {}),
      roomPermissions: RoomPermissions(const {}),
      background: RoomBackground(
        'https://images.pexels.com/photos/459654/pexels-photo-459654.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
      ),
    );
    rooms[RoomUniqueId.discovered().getOrCrash()] = discoveredRoom;
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

      final RoomEntity? discoverRoom = rooms[RoomUniqueId.discovereId];

      if (discoverRoom == null) {
        return;
      }
      discoverRoom.addDeviceId(entityEntery.key);

      setState(() {
        rooms[RoomUniqueId.discovered().getOrCrash()] = discoverRoom;
        devices.addEntries([entityEntery]);
      });
    });
    _initialzeRoomsAndDevices();
  }

  Future<void> _initialzeRoomsAndDevices() async {
    final HashMap<String, DeviceEntityBase> allDevice =
        await ConnectionsService.instance.getAllEntities;

    final HashMap<String, DeviceEntityBase> supportedEntities =
        getSupportedEnities(allDevice);
    final RoomEntity? tempDiscoverRoom =
        rooms[RoomUniqueId.discovered().getOrCrash()];
    if (tempDiscoverRoom == null) {
      return;
    }
    for (final String deviceId in supportedEntities.keys) {
      tempDiscoverRoom.addDeviceId(deviceId);
    }

    setState(() {
      rooms[RoomUniqueId.discovered().getOrCrash()] = tempDiscoverRoom;
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
    if (devices.isEmpty || rooms.isEmpty) {
      return GestureDetector(
        onTap: () {
          SnackBarService().show(
            context,
            'Add new device by pressing the plus button',
          );
        },
        child: EmptyOpenRoomOrganism(),
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
            child: RoomsListViewWidget(
              entities: devices,
              rooms: rooms,
            ),
          ),
        ],
      ),
    );
  }
}
