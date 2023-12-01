import 'dart:async';

import 'package:cbj_integrations_controller/domain/room/i_room_repository.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/domain/room/room_failures.dart';
import 'package:cbj_integrations_controller/domain/room/value_objects_room.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/infrastructure/phone_hub/phone_hub.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/home_page/tabs/smart_devices_tab/rooms_widgets/rooms_list_view_widget.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kt_dart/collection.dart';

class SmartDevicesByRooms extends StatefulWidget {
  @override
  State<SmartDevicesByRooms> createState() => _SmartDevicesByRoomsState();
}

class _SmartDevicesByRoomsState extends State<SmartDevicesByRooms> {
  KtList<RoomEntity?> rooms = const KtList<RoomEntity?>.empty();
  KtList<DeviceEntityAbstract?> devices =
      const KtList<DeviceEntityAbstract?>.empty();
  KtList<DeviceEntityAbstract?> listOfDevices = [null].toImmutableList();
  KtList<RoomEntity?> listOfRooms = [null].toImmutableList();

  StreamSubscription<dartz.Either<RoomFailure, KtList<RoomEntity?>>>?
      _roomStreamSubscription;

  StreamSubscription<
          dartz.Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;
  late RoomEntity discoveredRoom;

  Future<void> _roomsReceived(
    dartz.Either<dynamic, KtList<RoomEntity>> failureOrRooms,
  ) async {
    final KtList<RoomEntity> roomsTemp = failureOrRooms.fold(
      (f) => const KtList<RoomEntity>.empty(),
      (d) => d,
    );
    setState(() {
      rooms = roomsTemp;
    });
  }

  Future<void> _devicesReceived(
    dartz.Either<DevicesFailure<dynamic>, KtList<DeviceEntityAbstract?>>
        failureOrDevices,
  ) async {
    final KtList<DeviceEntityAbstract?> devicesTemp = failureOrDevices.fold(
      (f) => const KtList<DeviceEntityAbstract?>.empty(),
      (d) => d,
    );
    setState(() {
      devices = devicesTemp;
    });
  }

  @override
  void initState() {
    super.initState();
    _watchAllStarted();
  }

  Future<void> _watchAllStarted() async {
    discoveredRoom = RoomEntity(
      uniqueId:
          RoomUniqueId.fromUniqueString('00000000-0000-0000-0000-000000000000'),
      cbjEntityName: RoomDefaultName('Discovered'),
      roomTypes: RoomTypes(const []),
      roomDevicesId: RoomDevicesId(const []),
      roomScenesId: RoomScenesId(const []),
      roomRoutinesId: RoomRoutinesId(const []),
      roomBindingsId: RoomBindingsId(const []),
      roomMostUsedBy: RoomMostUsedBy(const []),
      roomPermissions: RoomPermissions(const []),
      background: RoomBackground(
        'https://images.pexels.com/photos/459654/pexels-photo-459654.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
      ),
    );

    final Map<String, DeviceEntityAbstract> allDevice =
        await PhoneHub().getAllDevices;

    for (final String deviceId in allDevice.keys) {
      discoveredRoom.addDeviceId(deviceId);
    }
    _roomsReceived(dartz.right([discoveredRoom].toImmutableList()));

    _devicesReceived(dartz.right(allDevice.values.toImmutableList()));

    _roomStreamSubscription =
        IRoomRepository.instance.watchAllRooms().listen((eventWatch) {
      _roomsReceived(eventWatch);
    });

    _deviceStreamSubscription =
        IDeviceRepository.instance.watchAllDevices().listen((eventWatch) {
      _devicesReceived(eventWatch);
    });
  }

  @override
  Future<void> dispose() async {
    await _roomStreamSubscription?.cancel();
    await _deviceStreamSubscription?.cancel();
    return super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (devices.isEmpty()) {
      return GestureDetector(
        onTap: () {
          Fluttertoast.showToast(
            msg: 'Add new device by pressing the plus button',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.blueGrey,
            textColor: Theme.of(context).textTheme.bodyLarge!.color,
            fontSize: 16.0,
          );
        },
        child: SingleChildScrollView(
          reverse: true,
          padding: const EdgeInsets.only(bottom: 15),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                alignment: Alignment.center,
                child: const ImageAtom(
                  'assets/cbj_logo.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: TextAtom(
                  'Devices list is empty',
                  style: TextStyle(
                    fontSize: 30,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    final Map<String?, List<DeviceEntityAbstract>> tempDevicesByRooms =
        <String, List<DeviceEntityAbstract>>{};

    final List<DeviceEntityAbstract?> devicesList = devices.iter.toList();

    return SingleChildScrollView(
      reverse: true,
      child: Column(
        children: [
          if (tempDevicesByRooms.length == 1)
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              alignment: Alignment.center,
              child: const ImageAtom(
                'assets/cbj_logo.png',
                width: 200.0,
                fit: BoxFit.fill,
              ),
            ),
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
            tempDevicesByRooms: tempDevicesByRooms,
            devicesList: devicesList,
            roomsList: rooms.iter.toList(),
          ),
        ],
      ),
    );
  }
}
