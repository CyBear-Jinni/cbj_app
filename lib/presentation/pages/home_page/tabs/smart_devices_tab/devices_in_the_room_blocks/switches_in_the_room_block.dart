import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_switch_device/generic_switch_entity.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/core/types_to_pass.dart';
import 'package:cybear_jinni/presentation/pages/routes/app_router.gr.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SwitchesInTheRoomBlock extends StatelessWidget {
  const SwitchesInTheRoomBlock({
    required this.roomEntity,
    required this.switchesInRoom,
    required this.roomColorGradiant,
  });

  factory SwitchesInTheRoomBlock.withAbstractDevice({
    required RoomEntity roomEntityTemp,
    required List<DeviceEntityAbstract> tempDeviceInRoom,
    required ListOfColors tempRoomColorGradiant,
  }) {
    final List<GenericSwitchDE> tempSwitchesInRoom = [];

    for (final element in tempDeviceInRoom) {
      tempSwitchesInRoom.add(element as GenericSwitchDE);
    }

    return SwitchesInTheRoomBlock(
      roomEntity: roomEntityTemp,
      switchesInRoom: tempSwitchesInRoom,
      roomColorGradiant: tempRoomColorGradiant,
    );
  }

  final RoomEntity roomEntity;
  final List<GenericSwitchDE> switchesInRoom;
  final ListOfColors roomColorGradiant;

  Future<void> _turnOffAllSwitches(
      BuildContext context, List<String>? switchesIdToTurnOff) async {
    FlushbarHelper.createLoading(
      message: 'Turning Off all switches',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance.turnOffDevices(devicesId: switchesIdToTurnOff);
  }

  Future<void> _turnOnAllSwitches(
      BuildContext context, List<String>? switchesIdToTurnOn) async {
    FlushbarHelper.createLoading(
      message: 'Turning On all switches',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance.turnOnDevices(devicesId: switchesIdToTurnOn);
  }

  @override
  Widget build(BuildContext context) {
    String deviceText;
    if (switchesInRoom.length == 1) {
      deviceText = switchesInRoom[0].cbjEntityName.getOrCrash()!;
    } else {
      deviceText =
          '_Switches'.tr(args: [roomEntity.cbjEntityName.getOrCrash()]);
    }

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
                        child: CircleAvatar(
                          child: Icon(
                            MdiIcons.lightSwitch,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ],
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
                                .bodyLarge!
                                .color!
                                .withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextAtom(
                          switchesInRoom.length.toString(),
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
                    _turnOffAllSwitches(
                      context,
                      extractDevicesId(),
                    );
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
                    _turnOnAllSwitches(
                      context,
                      extractDevicesId(),
                    );
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

  List<String> extractDevicesId() {
    final List<String> devicesIdList = [];
    for (final element in switchesInRoom) {
      devicesIdList.add(element.uniqueId.getOrCrash());
    }
    return devicesIdList;
  }
}
