import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/switches/switches_actor/switches_actor_bloc.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/generic_switch_device/generic_switch_entity.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SwitchesInTheRoomBlock extends StatelessWidget {
  const SwitchesInTheRoomBlock({
    required this.roomEntity,
    required this.switchesInRoom,
    required this.roomColorGradiant,
  });

  factory SwitchesInTheRoomBlock.withAbstractDevice({
    required RoomEntity roomEntityTemp,
    required List<DeviceEntityAbstract> tempDeviceInRoom,
    required List<Color> tempRoomColorGradiant,
  }) {
    final List<GenericSwitchDE> tempSwitchesInRoom = [];

    tempDeviceInRoom.forEach((element) {
      tempSwitchesInRoom.add(element as GenericSwitchDE);
    });

    return SwitchesInTheRoomBlock(
      roomEntity: roomEntityTemp,
      switchesInRoom: tempSwitchesInRoom,
      roomColorGradiant: tempRoomColorGradiant,
    );
  }

  final RoomEntity roomEntity;
  final List<GenericSwitchDE> switchesInRoom;
  final List<Color> roomColorGradiant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(
          RoomsSwitchesRoute(
            roomEntity: roomEntity,
            roomColorGradiant: roomColorGradiant,
          ),
        );
      },
      child: Container(
        color: Colors.amber.withOpacity(0.03),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(child: Text('')),
                const Expanded(
                  child: CircleAvatar(
                    child: FaIcon(
                      FontAwesomeIcons.flickr,
                      color: Colors.white70,
                    ),
                  ),
                ),
                if (switchesInRoom.length > 1)
                  Expanded(
                    child: Container(
                      height: 55,
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 28,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .color!
                                .withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          switchesInRoom.length.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).textTheme.bodyText1!.color,
                          ),
                        ),
                      ),
                    ),
                  )
                else
                  const Expanded(child: Text('')),
              ],
            ),
            if (switchesInRoom.length == 1)
              Text(
                switchesInRoom[0].defaultName.getOrCrash()!,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
              )
            else
              Text(
                '${switchesInRoom[0].roomName.getOrCrash()} Switches',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
              ),
            const SizedBox(
              height: 10,
            ),
            BlocConsumer<SwitchesActorBloc, SwitchesActorState>(
              listener: (context, state) {},
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.grey.withOpacity(0.6),
                        ),
                        side: MaterialStateProperty.all(
                          const BorderSide(width: 0.2),
                        ),
                      ),
                      onPressed: () {
                        context.read<SwitchesActorBloc>().add(
                              SwitchesActorEvent.turnOffAllSwitches(
                                extractDevicesId(),
                                context,
                              ),
                            );
                      },
                      child: Text(
                        'Off',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).textTheme.bodyText1!.color,
                        ),
                      ),
                    ),
                    Text(
                      '·',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).textTheme.bodyText1!.color,
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.grey.withOpacity(0.6),
                        ),
                        side: MaterialStateProperty.all(
                          const BorderSide(width: 0.2),
                        ),
                      ),
                      onPressed: () {
                        context.read<SwitchesActorBloc>().add(
                              SwitchesActorEvent.turnOnAllSwitches(
                                extractDevicesId(),
                                context,
                              ),
                            );
                      },
                      child: Text(
                        'On',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).textTheme.bodyText1!.color,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  List<String> extractDevicesId() {
    final List<String> devicesIdList = [];
    switchesInRoom.forEach((element) {
      devicesIdList.add(element.uniqueId.getOrCrash()!);
    });
    return devicesIdList;
  }
}
