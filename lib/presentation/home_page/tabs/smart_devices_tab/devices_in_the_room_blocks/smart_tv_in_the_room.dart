import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/generic_smart_tv/generic_smart_tv_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmartTvInTheRoom extends StatelessWidget {
  const SmartTvInTheRoom({this.smartTvsInRoom, this.roomColorGradiant});

  factory SmartTvInTheRoom.withAbstractDevice(
    List<DeviceEntityAbstract> tempDeviceInRoom,
    List<Color> tempRoomColorGradiant,
  ) {
    List<GenericSmartTvDE> tempLightsInRoom = [];

    tempDeviceInRoom.forEach((element) {
      tempLightsInRoom.add(element as GenericSmartTvDE);
    });

    return SmartTvInTheRoom(
      smartTvsInRoom: tempLightsInRoom,
      roomColorGradiant: tempRoomColorGradiant,
    );
  }

  final List<GenericSmartTvDE>? smartTvsInRoom;
  final List<Color>? roomColorGradiant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // context.router.push(RoomsSmartTvsRoute(
        //     showDevicesOnlyFromRoomId: smart_tvsInRoom![0].roomId.getOrCrash(),
        //     roomColorGradiant: roomColorGradiant));
        print('TV page is not supported');
      },
      child: Container(
        color: Colors.amber.withOpacity(0.03),
        margin: const EdgeInsets.all(5),
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
                      FontAwesomeIcons.tv,
                      color: Colors.green,
                    ),
                  ),
                ),
                if (smartTvsInRoom!.length > 1)
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
                          smartTvsInRoom!.length.toString(),
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
            if (smartTvsInRoom!.length == 1)
              Text(
                smartTvsInRoom![0].defaultName.getOrCrash()!,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
              )
            else
              Text(
                '${smartTvsInRoom![0].roomName.getOrCrash()} SmartTvs',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
              ),
          ],
        ),
      ),
    );
  }

  List<String> extractDevicesId() {
    final List<String> devicesIdList = [];
    smartTvsInRoom!.forEach((element) {
      devicesIdList.add(element.uniqueId.getOrCrash()!);
    });
    return devicesIdList;
  }
}
