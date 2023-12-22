import 'dart:async';
import 'dart:collection';

import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/domain/room/value_objects_room.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybear_jinni/domain/i_phone_as_hub.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/core/snack_bar_service.dart';
import 'package:cybear_jinni/presentation/organisms/organisms.dart';
import 'package:cybear_jinni/presentation/pages/home_page/tabs/smart_devices_tab/rooms_widgets/rooms_list_view_widget.dart';
import 'package:flutter/material.dart';

class SmartDevicesByRooms extends StatefulWidget {
  @override
  State<SmartDevicesByRooms> createState() => _SmartDevicesByRoomsState();
}

class _SmartDevicesByRoomsState extends State<SmartDevicesByRooms> {
  HashMap<String, RoomEntity> rooms = HashMap();
  HashMap<String, DeviceEntityBase> devices = HashMap();

  late RoomEntity discoveredRoom;

  Future<void> _roomsReceived(RoomEntity discoveredRoom) async {
    setState(() {
      rooms.addEntries([
        MapEntry<String, RoomEntity>(
          discoveredRoom.uniqueId.getOrCrash(),
          discoveredRoom,
        ),
      ]);
    });
  }

  @override
  void initState() {
    super.initState();
    _initialzeRoomsAndDevices();
  }

  Future<void> _initialzeRoomsAndDevices() async {
    discoveredRoom = RoomEntity(
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

    final HashMap<String, DeviceEntityBase> allDevice =
        await IPhoneAsHub.instance.getAllEntities;
    allDevice.removeWhere(
      (key, value) =>
          value.entityTypes.type == EntityTypes.smartTypeNotSupported ||
          value.entityTypes.type == EntityTypes.emptyEntity,
    );
    for (final String deviceId in allDevice.keys) {
      discoveredRoom.addDeviceId(deviceId);
    }
    _roomsReceived(discoveredRoom);

    setState(() {
      devices = allDevice;
    });
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

    return SingleChildScrollView(
      reverse: true,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: <Widget>[
                TextAtom(
                  'Areas',
                  style: TextStyle(
                    fontSize: 35,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 3
                      ..color = Colors.black.withOpacity(0.2),
                  ),
                ),
                TextAtom(
                  'Areas',
                  style: TextStyle(
                    fontSize: 35,
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                  ),
                ),
              ],
            ),
          ),
          RoomsListViewWidget(
            entities: devices,
            roomsList: rooms,
          ),
        ],
      ),
    );
  }
}
