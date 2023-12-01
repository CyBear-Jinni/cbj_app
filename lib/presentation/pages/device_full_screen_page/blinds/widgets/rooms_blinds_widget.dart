import 'dart:async';

import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_blinds_device/generic_blinds_entity.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/device_full_screen_page/blinds/widgets/room_blinds.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

class RoomsBlindsWidget extends StatefulWidget {
  const RoomsBlindsWidget({
    required this.roomEntity,
    required this.roomColorGradiant,
  });

  final RoomEntity roomEntity;
  final List<Color> roomColorGradiant;

  @override
  State<RoomsBlindsWidget> createState() => _RoomsBlindsWidgetState();
}

class _RoomsBlindsWidgetState extends State<RoomsBlindsWidget> {
  StreamSubscription<
          dartz.Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;
  KtList<GenericBlindsDE?> devices = const KtList<GenericBlindsDE?>.empty();

  @override
  void initState() {
    super.initState();
    _watchAllStarted();
  }

  Future<void> _watchAllStarted() async {
    await _deviceStreamSubscription?.cancel();
    _deviceStreamSubscription = IDeviceRepository.instance.watchBlinds().listen(
          (eventWatch) => _blindsReceived(eventWatch),
        );
  }

  Future<void> _blindsReceived(
    dartz.Either<DevicesFailure<dynamic>, KtList<DeviceEntityAbstract?>>
        failureOrDevices,
  ) async {
    final KtList<GenericBlindsDE?> devicesTemp = failureOrDevices.fold(
      (f) => const KtList<GenericBlindsDE?>.empty(),
      (d) => d.map((v) => v! as GenericBlindsDE).toMutableList(),
    );

    setState(() {
      devices = devicesTemp;
    });
  }

  @override
  Future<void> dispose() async {
    await _deviceStreamSubscription?.cancel();
    return super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (devices.isEmpty()) {
      return SingleChildScrollView(
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
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: TextAtom(
                'Blinds does not exist.',
                style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                ),
              ),
            ),
          ],
        ),
      );
    }
    final Map<String, List<DeviceEntityAbstract>> tempDevicesByRooms =
        <String, List<DeviceEntityAbstract>>{};

    /// Go on all the devices and find only the devices that exist
    /// in this room
    final String roomId = widget.roomEntity.uniqueId.getOrCrash();
    for (final DeviceEntityAbstract? deviceEntityAbstract in devices.iter) {
      if (deviceEntityAbstract == null) {
        continue;
      }
      final int indexOfDeviceInRoom =
          widget.roomEntity.roomDevicesId.getOrCrash().indexWhere((element) {
        return element == deviceEntityAbstract.uniqueId.getOrCrash();
      });
      if (indexOfDeviceInRoom != -1) {
        if (tempDevicesByRooms[roomId] == null) {
          tempDevicesByRooms[roomId] = [deviceEntityAbstract];
        } else {
          tempDevicesByRooms[roomId]!.add(deviceEntityAbstract);
        }
      }
    }

    final List<KtList<DeviceEntityAbstract>> devicesByRooms = [];

    tempDevicesByRooms.forEach((k, v) {
      devicesByRooms.add(v.toImmutableList());
    });

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      child: ListView.builder(
        reverse: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final List<Color> gradiantColor = widget.roomColorGradiant;

          final KtList<DeviceEntityAbstract> devicesInRoom =
              devicesByRooms[index];

          return RoomBlinds(
            devicesInRoom,
            gradiantColor,
            widget.roomEntity.cbjEntityName.getOrCrash(),
            maxLightsToShow: 50,
          );
        },
        itemCount: devicesByRooms.length,
      ),
    );
  }
}
