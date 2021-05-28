import 'package:cybear_jinni/application/blinds/blinds_watcher/blinds_watcher_bloc.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/presentation/blinds/widgets/critical_failure_blinds_display_widget.dart';
import 'package:cybear_jinni/presentation/blinds/widgets/room_blinds.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class RoomsBlindsWidget extends StatelessWidget {
  const RoomsBlindsWidget(
      this.showDevicesOnlyFromRoomId, this.roomColorGradiant);

  /// If not null show blinds only from this room
  final String showDevicesOnlyFromRoomId;

  final List<Color> roomColorGradiant;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlindsWatcherBloc, BlindsWatcherState>(
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
                final DeviceEntity tempDevice = state.devices[i]!;
                if (showDevicesOnlyFromRoomId != null) {
                  if (showDevicesOnlyFromRoomId ==
                      tempDevice.roomId!.getOrCrash()) {
                    if (tempDevicesByRooms[tempDevice.roomId!.getOrCrash()] ==
                        null) {
                      tempDevicesByRooms[tempDevice.roomId!.getOrCrash()] = [
                        tempDevice
                      ];
                    } else {
                      tempDevicesByRooms[tempDevice.roomId!.getOrCrash()]!
                          .add(tempDevice);
                    }
                  }
                } else {
                  if (tempDevicesByRooms[tempDevice.roomId!.getOrCrash()] ==
                      null) {
                    tempDevicesByRooms[tempDevice.roomId!.getOrCrash()] = [
                      tempDevice
                    ];
                  } else {
                    tempDevicesByRooms[tempDevice.roomId!.getOrCrash()]!
                        .add(tempDevice);
                  }
                }
              }

              final List<KtList<DeviceEntity>> devicesByRooms = [];

              tempDevicesByRooms.forEach((k, v) {
                devicesByRooms.add(v.toImmutableList());
              });

              int gradientColorCounter = -1;

              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    List<Color>? gradiantColor;
                    if (roomColorGradiant != null) {
                      gradiantColor = roomColorGradiant;
                    } else if (gradientColorCounter >
                        gradientColorsList.length - 1) {
                      gradientColorCounter = 0;
                      gradiantColor = gradientColorsList[gradientColorCounter];
                    }
                    final devicesInRoom = devicesByRooms[index];

                    return RoomBlinds(
                      devicesInRoom,
                      gradiantColor,
                      'Room ${index + 1}',
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
                      child: Image.asset(
                        'assets/cbj_logo.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Blinds does not exist.',
                        style: TextStyle(
                            fontSize: 30,
                            color:
                                Theme.of(context).textTheme.bodyText1!.color),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
          loadFailure: (state) {
            return CriticalFailureBlindsDisplay(
              failure: state.devicesFailure,
            );
          },
          blindError: (BlindError value) {
            return const Text('Error');
          },
        );
      },
    );
  }
}
