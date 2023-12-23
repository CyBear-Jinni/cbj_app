import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_boiler_entity/generic_boiler_entity.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/routes/app_router.gr.dart';
import 'package:cybearjinni/presentation/core/theme_data.dart';
import 'package:easy_localization/easy_localization.dart';
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
    required List<DeviceEntityBase> tempDeviceInRoom,
    required ListOfColors tempRoomColorGradiant,
  }) {
    final List<GenericBoilerDE> tempLightsInRoom = [];

    for (final element in tempDeviceInRoom) {
      tempLightsInRoom.add(element as GenericBoilerDE);
    }

    return BoilersInTheRoom(
      roomEntity: roomEntity,
      boilersInRoom: tempLightsInRoom,
      roomColorGradiant: tempRoomColorGradiant,
    );
  }

  final RoomEntity roomEntity;
  final List<GenericBoilerDE>? boilersInRoom;
  final ListOfColors? roomColorGradiant;

  @override
  Widget build(BuildContext context) {
    String deviceText;
    if (boilersInRoom!.length == 1) {
      deviceText = boilersInRoom![0].cbjEntityName.getOrCrash()!;
    } else {
      deviceText = '_Blinds'.tr(args: [roomEntity.cbjEntityName.getOrCrash()]);
    }

    return GestureDetector(
      onTap: () {
        context.router.push(
          DevicesInRoomRoute(
            entityTypes: const {EntityTypes.boiler},
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
                        child: const CircleAvatar(
                          child: FaIcon(
                            FontAwesomeIcons.temperatureThreeQuarters,
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
                                .bodyLarge!
                                .color!
                                .withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextAtom(
                          boilersInRoom!.length.toString(),
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
            const SizedBox(
              height: 10,
            ),
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
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
