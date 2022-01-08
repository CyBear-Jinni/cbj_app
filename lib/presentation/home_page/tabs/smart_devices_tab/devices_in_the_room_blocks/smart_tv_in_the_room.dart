import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/generic_smart_tv/generic_smart_tv_entity.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmartTvInTheRoom extends StatelessWidget {
  const SmartTvInTheRoom({
    required this.roomEntity,
    this.smartTvsInRoom,
    this.roomColorGradiant,
  });

  factory SmartTvInTheRoom.withAbstractDevice({
    required RoomEntity roomEntity,
    required List<DeviceEntityAbstract> tempDeviceInRoom,
    required List<Color> tempRoomColorGradiant,
  }) {
    List<GenericSmartTvDE> tempLightsInRoom = [];

    tempDeviceInRoom.forEach((element) {
      tempLightsInRoom.add(element as GenericSmartTvDE);
    });

    return SmartTvInTheRoom(
      roomEntity: roomEntity,
      smartTvsInRoom: tempLightsInRoom,
      roomColorGradiant: tempRoomColorGradiant,
    );
  }

  final RoomEntity roomEntity;
  final List<GenericSmartTvDE>? smartTvsInRoom;
  final List<Color>? roomColorGradiant;

  @override
  Widget build(BuildContext context) {
    String deviceText;
    if (smartTvsInRoom!.length == 1) {
      deviceText = smartTvsInRoom![0].defaultName.getOrCrash()!;
    } else {
      deviceText = '_SmartTvs'.tr(args: [roomEntity.defaultName.getOrCrash()]);
    }

    return GestureDetector(
      onTap: () {
        // context.router.push(RoomsSmartTvsRoute(
        //     showDevicesOnlyFromRoomId: smart_tvsInRoom![0].roomId.getOrCrash(),
        //     roomColorGradiant: roomColorGradiant));
        logger.w('TV page is not supported');
        FlushbarHelper.createInformation(
          message: 'TV page is currently missing',
          // failure.map(
          //   cancelledByUser: (_) => 'Cancelled',
          //   serverError: (_) => 'Server error',
          //   invalidApiKey: (_) => 'Email already in use',
          // ),
        ).show(context);
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
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Transform.scale(
                        scale: 1.2,
                        child: const CircleAvatar(
                          child: FaIcon(
                            FontAwesomeIcons.tv,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
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
            const SizedBox(height: 10),
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
          ],
        ),
      ),
    );
  }

  List<String> extractDevicesId() {
    final List<String> devicesIdList = [];
    smartTvsInRoom!.forEach((element) {
      devicesIdList.add(element.uniqueId.getOrCrash());
    });
    return devicesIdList;
  }
}
