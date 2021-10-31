import 'package:cybear_jinni/application/boilers/boilers_watcher/boilers_watcher_bloc.dart';
import 'package:cybear_jinni/domain/devices/generic_boiler_device/generic_boiler_entity.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/boilers/widgets/room_boilers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

import 'critical_boilers_failure_display_widget.dart';

class RoomsBoilersWidget extends StatelessWidget {
  const RoomsBoilersWidget(
    this.showDevicesOnlyFromRoomId,
    this.roomColorGradiant,
  );

  /// If not null show boilers only from this room
  final String showDevicesOnlyFromRoomId;

  final List<Color> roomColorGradiant;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BoilersWatcherBloc, BoilersWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            if (state.devices.size != 0) {
              final Map<String?, List<GenericBoilerDE>> tempDevicesByRooms =
                  <String, List<GenericBoilerDE>>{};

              for (int i = 0; i < state.devices.size; i++) {
                final GenericBoilerDE tempDevice = state.devices[i]!;
                if (showDevicesOnlyFromRoomId != null) {
                  if (showDevicesOnlyFromRoomId ==
                      tempDevice.roomId.getOrCrash()) {
                    if (tempDevicesByRooms[tempDevice.roomId.getOrCrash()] ==
                        null) {
                      tempDevicesByRooms[tempDevice.roomId.getOrCrash()] = [
                        tempDevice
                      ];
                    } else {
                      tempDevicesByRooms[tempDevice.roomId.getOrCrash()]!
                          .add(tempDevice);
                    }
                  }
                } else {
                  if (tempDevicesByRooms[tempDevice.roomId.getOrCrash()] ==
                      null) {
                    tempDevicesByRooms[tempDevice.roomId.getOrCrash()] = [
                      tempDevice
                    ];
                  } else {
                    tempDevicesByRooms[tempDevice.roomId.getOrCrash()]!
                        .add(tempDevice);
                  }
                }
              }

              final List<KtList<GenericBoilerDE>> devicesByRooms = [];

              tempDevicesByRooms.forEach((k, v) {
                devicesByRooms.add(v.toImmutableList());
              });

              int gradientColorCounter = -1;

              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    gradientColorCounter++;
                    List<Color> gradiantColor = GradientColors.sky;
                    if (roomColorGradiant != null) {
                      gradiantColor = roomColorGradiant;
                    } else if (gradientColorCounter >
                        gradientColorsList.length - 1) {
                      gradientColorCounter = 0;
                      gradiantColor = gradientColorsList[gradientColorCounter];
                    }
                    final devicesInRoom = devicesByRooms[index];

                    return RoomBoilers(
                      devicesInRoom,
                      gradiantColor,
                      devicesInRoom[0].roomName.getOrCrash(),
                      maxBoilersToShow: 50,
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
                        'Boilers does not exist.',
                        style: TextStyle(
                          fontSize: 30,
                          color: Theme.of(context).textTheme.bodyText1!.color,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
          loadFailure: (state) {
            return CriticalBoilersFailureDisplay(
              failure: state.devicesFailure,
            );
          },
          boilerError: (value) {
            return const Text('Error');
          },
        );
      },
    );
  }
}
