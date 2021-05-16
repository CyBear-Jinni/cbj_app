import 'package:cybear_jinni/application/devices/device_watcher/device_watcher_bloc.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/presentation/blinds/widgets/critical_failure_blinds_display_widget.dart';
import 'package:cybear_jinni/presentation/blinds/widgets/room_blinds.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class RoomsBlindsWidget extends StatelessWidget {
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
              final List<Color> _gradientColor = GradientColors.sky;
              final Map<String, List<DeviceEntity>> tempDevicesByRooms =
                  <String, List<DeviceEntity>>{};

              for (int i = 0; i < state.devices.size; i++) {
                if (state.devices[i].type.value.getOrElse(() => null) !=
                    'Blind') {
                  continue;
                }
                final DeviceEntity tempDevice = state.devices[i];
                if (tempDevicesByRooms[tempDevice.roomId.getOrCrash()] ==
                    null) {
                  tempDevicesByRooms[tempDevice.roomId.getOrCrash()] = [
                    tempDevice
                  ];
                } else {
                  tempDevicesByRooms[tempDevice.roomId.getOrCrash()]
                      .add(tempDevice);
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
                    gradientColorCounter++;
                    if (gradientColorCounter > gradientColorsList.length - 1) {
                      gradientColorCounter = 0;
                    }
                    final devicesInRoom = devicesByRooms[index];

                    return RoomBlinds(
                      devicesInRoom,
                      gradientColorsList[gradientColorCounter],
                      'Room ${index + 1}',
                      maxLightsToShow: 50,
                    );
                  },
                  itemCount: devicesByRooms.length,
                ),
              );
            } else {
              return Expanded(
                  child: FlatButton(
                onPressed: () {},
                color: Colors.black,
                child: const Text(
                    'No blinds have been found.\nPlease add new blind'),
              ));
            }
          },
          loadFailure: (state) {
            return CriticalFailureBlindsDisplay(
              failure: state.devicesFailure,
            );
          },
          error: (Error value) {
            return const Text('Error');
          },
        );
      },
    );
  }
}
