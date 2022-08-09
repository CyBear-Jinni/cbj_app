import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cybear_jinni/application/lights/lights_actor/lights_actor_bloc.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LightsInTheRoomBlock extends StatelessWidget {
  const LightsInTheRoomBlock({
    required this.roomEntity,
    required this.lightsInRoom,
    required this.roomColorGradiant,
  });

  factory LightsInTheRoomBlock.withAbstractDevice({
    required RoomEntity roomEntity,
    required List<DeviceEntityAbstract> tempDeviceInRoom,
    required List<Color> tempRoomColorGradiant,
  }) {
    final List<GenericLightDE> tempLightsInRoom = [];

    tempDeviceInRoom.forEach((element) {
      tempLightsInRoom.add(element as GenericLightDE);
    });

    return LightsInTheRoomBlock(
      roomEntity: roomEntity,
      lightsInRoom: tempLightsInRoom,
      roomColorGradiant: tempRoomColorGradiant,
    );
  }

  final RoomEntity roomEntity;
  final List<GenericLightDE> lightsInRoom;
  final List<Color> roomColorGradiant;

  @override
  Widget build(BuildContext context) {
    String deviceText;
    if (lightsInRoom.length == 1) {
      deviceText = lightsInRoom[0].defaultName.getOrCrash()!;
    } else {
      deviceText = '_Lights'.tr(args: [roomEntity.defaultName.getOrCrash()]);
    }

    return GestureDetector(
      onTap: () {
        context.router.push(
          RoomsLightsRoute(
            roomEntity: roomEntity,
            roomColorGradiant: roomColorGradiant,
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber.withOpacity(0.03),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(child: Text('')),
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Transform.scale(
                        scale: 1.2,
                        child: const CircleAvatar(
                          child: FaIcon(
                            FontAwesomeIcons.solidLightbulb,
                            color: Colors.amberAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (lightsInRoom.length > 1)
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
                          lightsInRoom.length.toString(),
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
            const SizedBox(height: 5),
            Stack(
              children: <Widget>[
                AutoSizeText(
                  deviceText,
                  maxLines: 1,
                  style: TextStyle(
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 0.8
                      ..color = Colors.black38,
                  ),
                ),
                AutoSizeText(
                  deviceText,
                  maxLines: 1,
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            BlocConsumer<LightsActorBloc, LightsActorState>(
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
                        context.read<LightsActorBloc>().add(
                              LightsActorEvent.turnOffAllLights(
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
                      ).tr(),
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
                        context.read<LightsActorBloc>().add(
                              LightsActorEvent.turnOnAllLights(
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
                      ).tr(),
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
    lightsInRoom.forEach((element) {
      devicesIdList.add(element.uniqueId.getOrCrash());
    });
    return devicesIdList;
  }
}
