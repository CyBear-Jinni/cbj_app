import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_blinds_entity/generic_blinds_entity.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/core/routes/app_router.gr.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BlindsInTheRoom extends StatefulWidget {
  const BlindsInTheRoom({
    required this.roomEntity,
    this.blindsInRoom,
    this.roomColorGradiant,
  });

  factory BlindsInTheRoom.withAbstractDevice({
    required RoomEntity roomEntity,
    required List<DeviceEntityAbstract> tempDeviceInRoom,
    required ListOfColors tempRoomColorGradiant,
  }) {
    final List<GenericBlindsDE> tempLightsInRoom = [];

    for (final element in tempDeviceInRoom) {
      tempLightsInRoom.add(element as GenericBlindsDE);
    }

    return BlindsInTheRoom(
      roomEntity: roomEntity,
      blindsInRoom: tempLightsInRoom,
      roomColorGradiant: tempRoomColorGradiant,
    );
  }

  final RoomEntity roomEntity;
  final List<GenericBlindsDE?>? blindsInRoom;
  final ListOfColors? roomColorGradiant;

  @override
  State<BlindsInTheRoom> createState() => _BlindsInTheRoomState();
}

class _BlindsInTheRoomState extends State<BlindsInTheRoom> {
  Future<void> _moveUpAllBlinds(List<String> blindsIdToTurnUp) async {
    FlushbarHelper.createLoading(
      message: 'Pulling_Up_all_blinds'.tr(),
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance.moveUpStateDevices(devicesId: blindsIdToTurnUp);
  }

  Future<void> _moveDownAllBlinds(List<String> blindsIdToTurnDown) async {
    FlushbarHelper.createLoading(
      message: 'Pulling_down_all_blinds'.tr(),
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance
        .moveDownStateDevices(devicesId: blindsIdToTurnDown);
  }

  List<String> extractDevicesId() {
    final List<String> devicesIdList = [];
    for (final element in widget.blindsInRoom!) {
      devicesIdList.add(element!.uniqueId.getOrCrash());
    }
    return devicesIdList;
  }

  @override
  Widget build(BuildContext context) {
    String deviceText;
    if (widget.blindsInRoom!.length == 1) {
      deviceText = widget.blindsInRoom![0]!.cbjEntityName.getOrCrash()!;
    } else {
      deviceText =
          '_Blinds'.tr(args: [widget.roomEntity.cbjEntityName.getOrCrash()]);
    }

    return GestureDetector(
      onTap: () {
        context.router.push(
          DevicesInRoomRoute(
            entityTypes: EntityTypes.blinds,
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
                            FontAwesomeIcons.alignJustify,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (widget.blindsInRoom!.length > 1)
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
                          widget.blindsInRoom!.length.toString(),
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
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.zero,
                    ),
                  ),
                  onPressed: () {
                    _moveDownAllBlinds(extractDevicesId());
                  },
                  child: FaIcon(
                    FontAwesomeIcons.chevronDown,
                    color: Theme.of(context).textTheme.bodyMedium!.color,
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
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.zero,
                    ),
                  ),
                  onPressed: () {
                    _moveUpAllBlinds(extractDevicesId());
                  },
                  child: FaIcon(
                    FontAwesomeIcons.chevronUp,
                    color: Theme.of(context).textTheme.bodyMedium!.color,
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
