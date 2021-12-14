import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/generic_boiler_device/generic_boiler_entity.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BoilersInTheRoom extends StatelessWidget {
  const BoilersInTheRoom({
    required this.roomEntity,
    this.boilersInRoom,
    this.roomColorGradiant,
  });

  factory BoilersInTheRoom.withAbstractDevice({
    required RoomEntity roomEntity,
    required List<DeviceEntityAbstract> tempDeviceInRoom,
    required List<Color> tempRoomColorGradiant,
  }) {
    List<GenericBoilerDE> tempLightsInRoom = [];

    tempDeviceInRoom.forEach((element) {
      tempLightsInRoom.add(element as GenericBoilerDE);
    });

    return BoilersInTheRoom(
      roomEntity: roomEntity,
      boilersInRoom: tempLightsInRoom,
      roomColorGradiant: tempRoomColorGradiant,
    );
  }

  final RoomEntity roomEntity;
  final List<GenericBoilerDE>? boilersInRoom;
  final List<Color>? roomColorGradiant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(
          RoomsBoilersRoute(
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
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Transform.scale(
                        scale: 1.2,
                        child: const CircleAvatar(
                          child: FaIcon(
                            FontAwesomeIcons.thermometerThreeQuarters,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (boilersInRoom!.length > 1)
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
                          boilersInRoom!.length.toString(),
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
            const SizedBox(
              height: 10,
            ),
            if (boilersInRoom!.length == 1)
              Text(
                boilersInRoom![0].defaultName.getOrCrash()!,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
              )
            else
              Text(
                '${roomEntity.defaultName.getOrCrash()} Boilers',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
              ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  List<String> extractDevicesId() {
    final List<String> devicesIdList = [];
    boilersInRoom!.forEach((element) {
      devicesIdList.add(element.uniqueId.getOrCrash());
    });
    return devicesIdList;
  }
}
