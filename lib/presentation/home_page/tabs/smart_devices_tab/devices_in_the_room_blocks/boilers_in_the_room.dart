import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/presentation/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BoilersInTheRoom extends StatelessWidget {
  BoilersInTheRoom(this.boilersInRoom);

  final List<DeviceEntity> boilersInRoom;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ExtendedNavigator.of(context).push(Routes.roomsBlindsPage,
            arguments: RoomsLightsPageArguments(
                showDevicesOnlyFromRoomId:
                    boilersInRoom[0].roomId.getOrCrash()));
      },
      child: Container(
        color: Colors.black.withOpacity(0.03),
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
                      FontAwesomeIcons.thermometerThreeQuarters,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
                if (boilersInRoom.length > 1)
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
                                  .bodyText1
                                  .color
                                  .withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          boilersInRoom.length.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 13,
                              color:
                                  Theme.of(context).textTheme.bodyText1.color),
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
            if (boilersInRoom.length == 1)
              Text(
                boilersInRoom[0].defaultName.getOrCrash(),
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1.color),
              )
            else
              Text(
                'Room Name boiler',
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1.color),
              ),
          ],
        ),
      ),
    );
  }

  List<String> extractDevicesId() {
    final List<String> devicesIdList = [];
    boilersInRoom.forEach((element) {
      devicesIdList.add(element.id.getOrCrash());
    });
    return devicesIdList;
  }
}
