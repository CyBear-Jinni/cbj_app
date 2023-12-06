import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_dimmable_light_device/generic_dimmable_light_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_light_device/generic_light_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/core/routes/app_router.gr.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LightsInTheRoomBlock extends StatefulWidget {
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
  State<LightsInTheRoomBlock> createState() => _LightsInTheRoomBlockState();
}

class _LightsInTheRoomBlockState extends State<LightsInTheRoomBlock> {
  Future<void> _turnOffAllLights(List<String> lightsIdToTurnOff) async {
    FlushbarHelper.createLoading(
      message: 'Turning Off all lights',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance.turnOffDevices(devicesId: lightsIdToTurnOff);
  }

  Future<void> _turnOnAllLights(List<String> lightsIdToTurnOn) async {
    FlushbarHelper.createLoading(
      message: 'Turning On all lights',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance.turnOnDevices(devicesId: lightsIdToTurnOn);
  }

  List<String> extractDevicesId() {
    final List<String> devicesIdList = [];
    for (final element in widget.lightsInRoom) {
      devicesIdList.add(element.uniqueId.getOrCrash());
    }
    for (final element in widget.dimmableLightsInRoom) {
      devicesIdList.add(element.uniqueId.getOrCrash());
    }
    for (final element in widget.rgbwLightsInRoom) {
      devicesIdList.add(element.uniqueId.getOrCrash());
    }

    return devicesIdList;
  }

  @override
  Widget build(BuildContext context) {
    String deviceText;

    final int totalLightsInTheRoom = widget.lightsInRoom.length +
        widget.dimmableLightsInRoom.length +
        widget.rgbwLightsInRoom.length;

    if (totalLightsInTheRoom == 1) {
      if (widget.lightsInRoom.isNotEmpty) {
        deviceText = widget.lightsInRoom.first.cbjEntityName.getOrCrash()!;
      } else if (widget.dimmableLightsInRoom.isNotEmpty) {
        deviceText =
            widget.dimmableLightsInRoom.first.cbjEntityName.getOrCrash()!;
      } else if (widget.rgbwLightsInRoom.isNotEmpty) {
        deviceText = widget.rgbwLightsInRoom.first.cbjEntityName.getOrCrash()!;
      } else {
        logger.w('Missing a line here');
        deviceText = 'Light';
      }
    } else {
      deviceText =
          '_Lights'.tr(args: [widget.roomEntity.cbjEntityName.getOrCrash()]);
    }

    return GestureDetector(
      onTap: () {
        context.router.push(
          RoomsLightsRoute(
            roomEntity: widget.roomEntity,
            roomColorGradiant: widget.roomColorGradiant,
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
                const Expanded(child: TextAtom('')),
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
                        child: TextAtom(
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
                  const Expanded(child: TextAtom('')),
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
            Row(
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
                    _turnOffAllLights(extractDevicesId());
                  },
                  child: TextAtom(
                    'Off',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                  ),
                ),
                TextAtom(
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
                    _turnOnAllLights(extractDevicesId());
                  },
                  child: TextAtom(
                    'On',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
