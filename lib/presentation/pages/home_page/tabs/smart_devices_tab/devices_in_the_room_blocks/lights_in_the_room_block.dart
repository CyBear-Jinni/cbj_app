import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cybear_jinni/application/lights/lights_actor/lights_actor_bloc.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_dimmable_light_device/generic_dimmable_light_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/presentation/core/types_to_pass.dart';
import 'package:cybear_jinni/presentation/pages/routes/app_router.gr.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LightsInTheRoomBlock extends StatelessWidget {
  const LightsInTheRoomBlock({
    required this.roomEntity,
    required this.lightsInRoom,
    required this.dimmableLightsInRoom,
    required this.rgbwLightsInRoom,
    required this.roomColorGradiant,
  });

  factory LightsInTheRoomBlock.withAbstractDevice({
    required RoomEntity roomEntity,
    required List<DeviceEntityAbstract> tempDeviceInRoom,
    required ListOfColors tempRoomColorGradiant,
  }) {
    final List<GenericLightDE> tempLightsInRoom = [];
    final List<GenericDimmableLightDE> tempDimmableLightsInRoom = [];
    final List<GenericRgbwLightDE> tempRgbwLightsInRoom = [];

    for (final element in tempDeviceInRoom) {
      if (element.entityTypes.getOrCrash() == EntityTypes.light.toString()) {
        tempLightsInRoom.add(element as GenericLightDE);
      } else if (element.entityTypes.getOrCrash() ==
          EntityTypes.dimmableLight.toString()) {
        tempDimmableLightsInRoom.add(element as GenericDimmableLightDE);
      } else if (element.entityTypes.getOrCrash() ==
          EntityTypes.rgbwLights.toString()) {
        tempRgbwLightsInRoom.add(element as GenericRgbwLightDE);
      } else {
        logger.e('Unsupported light type ${element.entityTypes.getOrCrash()}');
      }
    }

    return LightsInTheRoomBlock(
      roomEntity: roomEntity,
      lightsInRoom: tempLightsInRoom,
      dimmableLightsInRoom: tempDimmableLightsInRoom,
      rgbwLightsInRoom: tempRgbwLightsInRoom,
      roomColorGradiant: tempRoomColorGradiant,
    );
  }

  final RoomEntity roomEntity;
  final List<GenericLightDE> lightsInRoom;
  final List<GenericDimmableLightDE> dimmableLightsInRoom;
  final List<GenericRgbwLightDE> rgbwLightsInRoom;
  final ListOfColors roomColorGradiant;

  @override
  Widget build(BuildContext context) {
    String deviceText;

    final int totalLightsInTheRoom = lightsInRoom.length +
        dimmableLightsInRoom.length +
        rgbwLightsInRoom.length;

    if (totalLightsInTheRoom == 1) {
      if (lightsInRoom.isNotEmpty) {
        deviceText = lightsInRoom.first.cbjEntityName.getOrCrash()!;
      } else if (dimmableLightsInRoom.isNotEmpty) {
        deviceText = dimmableLightsInRoom.first.cbjEntityName.getOrCrash()!;
      } else if (rgbwLightsInRoom.isNotEmpty) {
        deviceText = rgbwLightsInRoom.first.cbjEntityName.getOrCrash()!;
      } else {
        logger.w('Missing a line here');
        deviceText = 'Light';
      }
    } else {
      deviceText = '_Lights'.tr(args: [roomEntity.cbjEntityName.getOrCrash()]);
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
                if (totalLightsInTheRoom > 1)
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
                                .bodyLarge!
                                .color!
                                .withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          totalLightsInTheRoom.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(context).textTheme.bodyLarge!.color,
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
                    color: Theme.of(context).textTheme.bodyLarge!.color,
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
                          color: Theme.of(context).textTheme.bodyLarge!.color,
                        ),
                      ).tr(),
                    ),
                    Text(
                      '·',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).textTheme.bodyLarge!.color,
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
                          color: Theme.of(context).textTheme.bodyLarge!.color,
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
    for (final element in lightsInRoom) {
      devicesIdList.add(element.uniqueId.getOrCrash());
    }
    for (final element in dimmableLightsInRoom) {
      devicesIdList.add(element.uniqueId.getOrCrash());
    }
    for (final element in rgbwLightsInRoom) {
      devicesIdList.add(element.uniqueId.getOrCrash());
    }

    return devicesIdList;
  }
}
