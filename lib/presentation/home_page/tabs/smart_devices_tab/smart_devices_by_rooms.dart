import 'package:cybear_jinni/application/blinds/blinds_actor/blinds_actor_bloc.dart';
import 'package:cybear_jinni/application/devices/device_watcher/device_watcher_bloc.dart';
import 'package:cybear_jinni/application/lights/lights_actor/lights_actor_bloc.dart';
import 'package:cybear_jinni/domain/devices/device/device_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/blinds_in_the_room.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/boilers_in_the_room.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/lights_in_the_room_block.dart';
import 'package:cybear_jinni/presentation/lights/widgets/critical_light_failure_display_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SmartDevicesByRooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeviceWatcherBloc, DeviceWatcherState>(
        builder: (context, state) {
      return state.map(
        initial: (_) => Container(),
        loadInProgress: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        loadSuccess: (state) {
          if (state.devices.size != 0) {
            final Map<String?, List<DeviceEntity>> tempDevicesByRooms =
                <String, List<DeviceEntity>>{};

            for (int i = 0; i < state.devices.size; i++) {
              if (state.devices[i] == null) {
                continue;
              }
              final DeviceEntity tempDevice = state.devices[i]!;
              if (tempDevicesByRooms[tempDevice.roomId!.getOrCrash()] == null) {
                tempDevicesByRooms[tempDevice.roomId!.getOrCrash()] = [
                  tempDevice
                ];
              } else {
                tempDevicesByRooms[tempDevice.roomId!.getOrCrash()]!
                    .add(tempDevice);
              }
            }

            final Map<String, Map<String, List<DeviceEntity>>>
                tempDevicesByRoomsByType =
                <String, Map<String, List<DeviceEntity>>>{};

            final Map<String, List<DeviceEntity>> tempDevicesByType =
                <String, List<DeviceEntity>>{};

            tempDevicesByRooms.forEach((k, v) {
              tempDevicesByRoomsByType[k!] = {};
              v.forEach((element) {
                if (tempDevicesByRoomsByType[k]![
                        element.deviceTypes!.getOrCrash()] ==
                    null) {
                  tempDevicesByRoomsByType[k]![
                      element.deviceTypes!.getOrCrash()] = [element];
                } else {
                  tempDevicesByRoomsByType[k]![
                          element.deviceTypes!.getOrCrash()]!
                      .add(element);
                }
              });
            });

            int gradientColorCounter = -1;

            return SingleChildScrollView(
              reverse: true,
              child: Column(
                children: [
                  if (tempDevicesByRooms.length == 1)
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/cbj_logo.png',
                        width: 200.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  Container(
                    color: Colors.black.withOpacity(0.2),
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Stack(
                      children: <Widget>[
                        Text(
                          'Rooms',
                          style: TextStyle(
                            fontSize: 35,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 3
                              ..color = Colors.black.withOpacity(0.2),
                          ),
                        ),
                        Text(
                          'Rooms',
                          style: TextStyle(
                            fontSize: 35,
                            color: Theme.of(context).textTheme.bodyText1!.color,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      gradientColorCounter++;
                      if (gradientColorCounter >= gradientColorsList.length) {
                        gradientColorCounter = 0;
                      }

                      final String roomId =
                          tempDevicesByRoomsByType.keys.elementAt(index);

                      int numberOfDevicesInTheRoom = 0;

                      tempDevicesByRoomsByType[roomId]!.forEach((key, value) {
                        value.forEach((element) {
                          numberOfDevicesInTheRoom++;
                        });
                      });
                      final List<Color> roomColorGradiant =
                          gradientColorsList[gradientColorCounter];

                      return Container(
                        margin: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: roomColorGradiant,
                            begin: Alignment.bottomLeft,
                            end: Alignment.topLeft,
                          ),
                          border: const Border.symmetric(
                            horizontal: BorderSide(width: 0.3),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 12),
                                alignment: Alignment.topCenter,
                                child: Text(
                                  tempDevicesByRoomsByType[roomId]!
                                      .values
                                      .first
                                      .first
                                      .roomName!
                                      .getOrCrash()!,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .color),
                                ),
                              ),
                              if (numberOfDevicesInTheRoom == 1)
                                Text(
                                  '$numberOfDevicesInTheRoom device',
                                  style: const TextStyle(fontSize: 12),
                                )
                              else
                                Text(
                                  '$numberOfDevicesInTheRoom devices',
                                  style: const TextStyle(fontSize: 12),
                                ),
                              GridView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                    childAspectRatio: 1.4,
                                    crossAxisSpacing: 8,
                                    mainAxisSpacing: 4,
                                  ),
                                  itemCount: tempDevicesByRoomsByType[roomId]!
                                      .keys
                                      .length,
                                  itemBuilder: (BuildContext ctx, secondIndex) {
                                    final String deviceType =
                                        tempDevicesByRoomsByType[roomId]!
                                            .keys
                                            .elementAt(secondIndex);
                                    if (deviceType ==
                                        DeviceTypes.light.toString()) {
                                      return BlocProvider(
                                        create: (context) =>
                                            getIt<LightsActorBloc>(),
                                        child: LightsInTheRoomBlock(
                                            tempDevicesByRoomsByType[roomId]![
                                                deviceType]!,
                                            roomColorGradiant),
                                      );
                                    } else if (deviceType ==
                                        DeviceTypes.blinds.toString()) {
                                      return BlocProvider(
                                        create: (context) =>
                                            getIt<BlindsActorBloc>(),
                                        child: BlindsInTheRoom(
                                          blindsInRoom:
                                              tempDevicesByRoomsByType[roomId]![
                                                  deviceType],
                                          roomColorGradiant: roomColorGradiant,
                                        ),
                                      );
                                    } else if (deviceType ==
                                        DeviceTypes.boiler.toString()) {
                                      return BlocProvider(
                                        create: (context) =>
                                            getIt<BlindsActorBloc>(),
                                        child: BoilersInTheRoom(
                                          boilersInRoom:
                                              tempDevicesByRoomsByType[roomId]![
                                                  deviceType],
                                          roomColorGradiant: roomColorGradiant,
                                        ),
                                      );
                                    }
                                    return const Text('Not Supported');
                                  }),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: tempDevicesByRoomsByType.keys.length,
                  ),
                ],
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
                    child: Image.asset(
                      'assets/cbj_logo.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: 'Add new device by pressing the three dots '
                              'in the top corner',
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.CENTER,
                          backgroundColor: Colors.blueGrey,
                          textColor:
                              Theme.of(context).textTheme.bodyText1!.color,
                          fontSize: 16.0);
                    },
                    child: const Text(
                      'Devices list is empty.',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
            );
          }
        },
        loadFailure: (state) {
          return CriticalLightFailureDisplay(
            failure: state.devicesFailure,
          );
        },
        error: (Error value) {
          return const Text('Error');
        },
      );
    });
  }
}
