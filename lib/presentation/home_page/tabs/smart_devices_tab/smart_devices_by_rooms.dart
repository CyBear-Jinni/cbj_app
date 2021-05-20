import 'package:cybear_jinni/application/blinds/blinds_actor/blinds_actor_bloc.dart';
import 'package:cybear_jinni/application/devices/device_watcher/device_watcher_bloc.dart';
import 'package:cybear_jinni/application/lights/lights_actor/lights_actor_bloc.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/client/protoc_as_dart/smart_connection.pb.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/client/protoc_as_dart/smart_connection.pbgrpc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/blinds_in_the_room.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/lights_in_the_room_block.dart';
import 'package:cybear_jinni/presentation/lights/widgets/critical_light_failure_display_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            final Map<String, List<DeviceEntity>> tempDevicesByRooms =
                <String, List<DeviceEntity>>{};

            for (int i = 0; i < state.devices.size; i++) {
              final DeviceEntity tempDevice = state.devices[i];
              if (tempDevicesByRooms[tempDevice.roomId.getOrCrash()] == null) {
                tempDevicesByRooms[tempDevice.roomId.getOrCrash()] = [
                  tempDevice
                ];
              } else {
                tempDevicesByRooms[tempDevice.roomId.getOrCrash()]
                    .add(tempDevice);
              }
            }

            final Map<String, Map<String, List<DeviceEntity>>>
                tempDevicesByRoomsByType =
                <String, Map<String, List<DeviceEntity>>>{};

            final Map<String, List<DeviceEntity>> tempDevicesByType =
                <String, List<DeviceEntity>>{};

            tempDevicesByRooms.forEach((k, v) {
              tempDevicesByRoomsByType[k] = {};
              v.forEach((element) {
                if (tempDevicesByRoomsByType[k][element.type.getOrCrash()] ==
                    null) {
                  tempDevicesByRoomsByType[k]
                      [element.type.getOrCrash()] = [element];
                } else {
                  tempDevicesByRoomsByType[k][element.type.getOrCrash()]
                      .add(element);
                }
              });
            });

            int gradientColorCounter = -1;

            return SingleChildScrollView(
              reverse: true,
              child: Column(
                children: [
                  Container(
                    color: Colors.black.withOpacity(0.2),
                    padding: const EdgeInsets.symmetric(horizontal: 50),
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
                            color: Theme.of(context).textTheme.subtitle2.color,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (tempDevicesByRooms.length > 1)
                    const SizedBox(
                      height: 20,
                    )
                  else
                    const SizedBox(
                      height: 130,
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

                      tempDevicesByRoomsByType[roomId].forEach((key, value) {
                        value.forEach((element) {
                          numberOfDevicesInTheRoom++;
                        });
                      });

                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 3),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: gradientColorsList[gradientColorCounter],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topLeft,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 12),
                                alignment: Alignment.topCenter,
                                child: Text(
                                  'Room Name',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1
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
                                          childAspectRatio: 1.1,
                                          crossAxisSpacing: 8,
                                          mainAxisSpacing: 4),
                                  itemCount: tempDevicesByRoomsByType[roomId]
                                      .keys
                                      .length,
                                  itemBuilder: (BuildContext ctx, secondIndex) {
                                    final String deviceType =
                                        tempDevicesByRoomsByType[roomId]
                                            .keys
                                            .elementAt(secondIndex);
                                    if (deviceType ==
                                        DeviceTypes.Light.toString()) {
                                      return BlocProvider(
                                        create: (context) =>
                                            getIt<LightsActorBloc>(),
                                        child: LightsInTheRoomBlock(
                                            tempDevicesByRoomsByType[roomId]
                                                [deviceType]),
                                      );
                                    } else if (deviceType ==
                                        DeviceTypes.Blinds.toString()) {
                                      return BlocProvider(
                                        create: (context) =>
                                            getIt<BlindsActorBloc>(),
                                        child: BlindsInTheRoom(
                                            tempDevicesByRoomsByType[roomId]
                                                [deviceType]),
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
            return Expanded(
                child: FlatButton(
              onPressed: () {},
              color: Colors.black,
              child: const Text(
                  'No lights have been found.\nPlease add new light'),
            ));
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
