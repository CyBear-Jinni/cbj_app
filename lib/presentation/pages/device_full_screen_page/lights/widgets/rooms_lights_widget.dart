import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/pages/device_full_screen_page/lights/widgets/room_lights.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

class RoomsLightsWidget extends StatefulWidget {
  const RoomsLightsWidget({
    required this.roomEntity,
    required this.roomColorGradiant,
  });

  final RoomEntity roomEntity;
  final ListOfColors roomColorGradiant;

  @override
  State<RoomsLightsWidget> createState() => _RoomsLightsWidgetState();
}

class _RoomsLightsWidgetState extends State<RoomsLightsWidget> {
  @override
  void initState() {
    super.initState();
    _watchAllStarted();
  }

  bool inProgress = true;
  KtList<DeviceEntityAbstract?> devices =
      <DeviceEntityAbstract>[].toImmutableList();

  StreamSubscription<
          dartz.Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;

  Future<void> _watchAllStarted() async {
    await _deviceStreamSubscription?.cancel();
    _deviceStreamSubscription = IDeviceRepository.instance.watchLights().listen(
          (eventWatch) => _devicesReceived(eventWatch),
        );
  }

  Future<void> _devicesReceived(
    dartz.Either<DevicesFailure<dynamic>, KtList<DeviceEntityAbstract?>>
        failureOrDevices,
  ) async {
    devices = failureOrDevices.fold(
      (f) => <DeviceEntityAbstract>[].toImmutableList(),
      (d) => d.map((v) => v!).toMutableList(),
    );
    setState(() {
      inProgress = false;
    });
  }

  @override
  void dispose() {
    _deviceStreamSubscription?.cancel();
    return super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (inProgress) {
      return const CircularProgressIndicator();
    }

    if (devices.size != 0) {
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
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            final List<Color> gradiantColor =
                widget.roomColorGradiant.listOfColors!;

            final devicesInRoom = devicesByRooms[index];

            return RoomLights(
              devicesInRoom,
              gradiantColor,
              widget.roomEntity.cbjEntityName.getOrCrash(),
              maxLightsToShow: 50,
            );
          },
          itemCount: devicesByRooms.length,
        ),
      );
    } else {
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
                context.router.pop();
              },
              child: TextAtom(
                'Lights does not exist.',
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
  }
}
