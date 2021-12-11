import 'package:cybear_jinni/application/blinds/blinds_watcher/blinds_watcher_bloc.dart';
import 'package:cybear_jinni/domain/devices/generic_blinds_device/generic_blinds_entity.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/blinds/widgets/critical_failure_blinds_display_widget.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/blinds/widgets/room_blinds.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class RoomsBlindsWidget extends StatelessWidget {
  const RoomsBlindsWidget({
    required this.roomEntity,
    required this.roomColorGradiant,
  });

  final RoomEntity roomEntity;
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
              final Map<String?, List<GenericBlindsDE>> tempDevicesByRooms =
                  <String, List<GenericBlindsDE>>{};

              for (int i = 0; i < state.devices.size; i++) {
                final GenericBlindsDE tempDevice = state.devices[i]!;
                if (roomEntity.uniqueId.getOrCrash() != null) {
                  if (roomEntity.uniqueId.getOrCrash() ==
                      roomEntity.uniqueId.getOrCrash()) {
                    if (tempDevicesByRooms[roomEntity.uniqueId.getOrCrash()] ==
                        null) {
                      tempDevicesByRooms[roomEntity.uniqueId.getOrCrash()] = [
                        tempDevice
                      ];
                    } else {
                      tempDevicesByRooms[roomEntity.uniqueId.getOrCrash()]!
                          .add(tempDevice);
                    }
                  }
                } else {
                  if (tempDevicesByRooms[roomEntity.uniqueId.getOrCrash()] ==
                      null) {
                    tempDevicesByRooms[roomEntity.uniqueId.getOrCrash()] = [
                      tempDevice
                    ];
                  } else {
                    tempDevicesByRooms[roomEntity.uniqueId.getOrCrash()]!
                        .add(tempDevice);
                  }
                }
              }

              final List<KtList<GenericBlindsDE>> devicesByRooms = [];

              tempDevicesByRooms.forEach((k, v) {
                devicesByRooms.add(v.toImmutableList());
              });

              int gradientColorCounter = -1;

              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                child: ListView.builder(
                  reverse: true,
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
                    final KtList<GenericBlindsDE> devicesInRoom =
                        devicesByRooms[index];

                    return RoomBlinds(
                      devicesInRoom,
                      gradiantColor,
                      roomEntity.defaultName.getOrCrash(),
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
