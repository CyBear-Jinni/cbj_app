import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/generic_smart_computer_device/generic_smart_computer_entity.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmartComputersInTheRoomBlock extends StatelessWidget {
  const SmartComputersInTheRoomBlock({
    required this.roomEntity,
    required this.smartComputersInRoom,
    required this.roomColorGradiant,
  });

  factory SmartComputersInTheRoomBlock.withAbstractDevice({
    required RoomEntity roomEntityTemp,
    required List<DeviceEntityAbstract> tempDeviceInRoom,
    required List<Color> tempRoomColorGradiant,
  }) {
    final List<GenericSmartComputerDE> tempSmartComputersInRoom = [];

    for (final element in tempDeviceInRoom) {
      tempSmartComputersInRoom.add(element as GenericSmartComputerDE);
    }

    return SmartComputersInTheRoomBlock(
      roomEntity: roomEntityTemp,
      smartComputersInRoom: tempSmartComputersInRoom,
      roomColorGradiant: tempRoomColorGradiant,
    );
  }

  final RoomEntity roomEntity;
  final List<GenericSmartComputerDE> smartComputersInRoom;
  final List<Color> roomColorGradiant;

  @override
  Widget build(BuildContext context) {
    String deviceText;
    if (smartComputersInRoom.length == 1) {
      deviceText = smartComputersInRoom[0].cbjEntityName.getOrCrash()!;
    } else {
      deviceText =
          '_SmartComputers'.tr(args: [roomEntity.cbjEntityName.getOrCrash()]);
    }

    return GestureDetector(
      onTap: () {
        context.router.push(
          RoomsSmartComputersRoute(
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
                            FontAwesomeIcons.computer,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (smartComputersInRoom.length > 1)
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
                          smartComputersInRoom.length.toString(),
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
          ],
        ),
      ),
    );
  }

  List<String> extractDevicesId() {
    final List<String> devicesIdList = [];
    for (final element in smartComputersInRoom) {
      devicesIdList.add(element.uniqueId.getOrCrash());
    }
    return devicesIdList;
  }
}
