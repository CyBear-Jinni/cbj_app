import 'dart:collection';

import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/theme_data.dart';
import 'package:cybearjinni/presentation/organisms/organisms.dart';
import 'package:flutter/material.dart';

class RoomWidget extends StatefulWidget {
  const RoomWidget({
    required this.room,
    required this.rooms,
    required this.entities,
    required this.entitiesInTheRoom,
    required this.bottomMargin,
    required this.leftMargin,
    required this.rightMargin,
    required this.borderRadius,
    required this.roomColorGradiant,
  });

  final RoomEntity room;
  final double bottomMargin;
  final double leftMargin;
  final double rightMargin;
  final double borderRadius;
  final ListOfColors roomColorGradiant;
  final HashMap<String, RoomEntity> rooms;
  final Set<String> entitiesInTheRoom;
  final HashMap<String, DeviceEntityBase> entities;

  @override
  State<RoomWidget> createState() => _RoomWidgetState();
}

class _RoomWidgetState extends State<RoomWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.entitiesInTheRoom.isEmpty) {
      return const SizedBox();
    }
    final int numberOfDevicesInTheRoom = widget.entitiesInTheRoom.length;

    ThemeData themeData = Theme.of(context);
    TextTheme textTheme = themeData.textTheme;
    ColorScheme colorScheme = themeData.colorScheme;

    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      child: Column(
        children: [
          Row(
            children: [
              TextAtom(
                widget.room.cbjEntityName.getOrCrash(),
                style: textTheme.headlineSmall,
              ),
              const Text(' - '),
              if (numberOfDevicesInTheRoom == 1)
                TextAtom(
                  '_device',
                  style: textTheme.bodyLarge,
                  translationArgs: [numberOfDevicesInTheRoom.toString()],
                )
              else
                TextAtom(
                  '_devices',
                  style: textTheme.bodyLarge,
                  translationArgs: [numberOfDevicesInTheRoom.toString()],
                ),
            ],
          ),
          DevicesListView(HashSet.from(widget.entities.values)),

          /// Build the devices in the room by type
          // GridView.builder(
          //   padding: EdgeInsets.zero,
          //   shrinkWrap: true,
          //   physics: const NeverScrollableScrollPhysics(),
          //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          //     maxCrossAxisExtent: 200,
          //     childAspectRatio: 1.2,
          //     crossAxisSpacing: 10,
          //     mainAxisSpacing: 15,
          //   ),
          //   itemCount: widget.entitiesInTheRoom.length,
          //   itemBuilder: (BuildContext ctx, secondIndex) {
          //     final DeviceEntityBase? entity = widget.entities[
          //         widget.entitiesInTheRoom.elementAt(secondIndex)];
          //     if (entity == null) {
          //       return const SizedBox();
          //     }

          //     final EntityTypes deviceType = entity.entityTypes.type;

          //     if (deviceType == EntityTypes.light ||
          //         deviceType == EntityTypes.dimmableLight ||
          //         deviceType == EntityTypes.rgbwLights) {
          //       return LightsInTheRoomBlock.withAbstractDevice(
          //         roomEntity: widget.room,
          //         entities: [entity],
          //         tempRoomColorGradiant: widget.roomColorGradiant,
          //       );
          //     } else if (deviceType == EntityTypes.switch_) {
          //       return SwitchesInTheRoomBlock.withAbstractDevice(
          //         roomEntityTemp: widget.room,
          //         entities: [entity],
          //         tempRoomColorGradiant: widget.roomColorGradiant,
          //       );
          //     } else if (deviceType == EntityTypes.blinds) {
          //       return BlindsInTheRoom.withAbstractDevice(
          //         roomEntity: widget.room,
          //         tempDeviceInRoom: [entity],
          //         tempRoomColorGradiant: widget.roomColorGradiant,
          //       );
          //     } else if (deviceType == EntityTypes.boiler) {
          //       return BoilersInTheRoom.withAbstractDevice(
          //         roomEntity: widget.room,
          //         tempDeviceInRoom: [entity],
          //         tempRoomColorGradiant: widget.roomColorGradiant,
          //       );
          //     } else if (deviceType == EntityTypes.smartTV) {
          //       return SmartTvInTheRoom.withAbstractDevice(
          //         roomEntity: widget.room,
          //         tempDeviceInRoom: [entity],
          //         tempRoomColorGradiant: widget.roomColorGradiant,
          //       );
          //     } else if (deviceType == EntityTypes.smartPlug) {
          //       return SmartPlugsInTheRoomBlock.withAbstractDevice(
          //         roomEntityTemp: widget.room,
          //         entities: [entity],
          //         tempRoomColorGradiant: widget.roomColorGradiant,
          //       );
          //     } else if (deviceType == EntityTypes.smartComputer) {
          //       return SmartComputersInTheRoomBlock.withAbstractDevice(
          //         roomEntityTemp: widget.room,
          //         tempDeviceInRoom: [entity],
          //         tempRoomColorGradiant: widget.roomColorGradiant,
          //       );
          //     } else if (deviceType == EntityTypes.printer) {
          //       return PrintersInTheRoomBlock.withAbstractDevice(
          //         roomEntityTemp: widget.room,
          //         tempDeviceInRoom: [entity],
          //         tempRoomColorGradiant: widget.roomColorGradiant,
          //       );
          //     } else if (deviceType == EntityTypes.securityCamera) {
          //       return SecurityCamerasInTheRoomBlock.withAbstractDevice(
          //         roomEntityTemp: widget.room,
          //         tempDeviceInRoom: [entity],
          //         tempRoomColorGradiant: widget.roomColorGradiant,
          //       );
          //     }

          //     logger.w('Arrived here unsupported device type $deviceType');

          //     return TextButton(
          //       onPressed: () {
          //         FlushbarHelper.createInformation(
          //           message:
          //               'This device is not supported\nName: ${entity.cbjEntityName.getOrCrash()}',
          //         ).show(context);
          //       },
          //       child: const Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           CircleAvatar(
          //             child: FaIcon(
          //               FontAwesomeIcons.eyeLowVision,
          //               color: Colors.red,
          //             ),
          //           ),
          //           TextAtom(
          //             'Unsupported Type',
          //             style: TextStyle(color: Colors.white),
          //           ),
          //         ],
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
