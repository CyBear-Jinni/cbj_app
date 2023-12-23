import 'dart:collection';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybearjinni/infrastructure/core/logger.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/theme_data.dart';
import 'package:cybearjinni/presentation/pages/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/blinds_in_the_room.dart';
import 'package:cybearjinni/presentation/pages/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/boilers_in_the_room.dart';
import 'package:cybearjinni/presentation/pages/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/lights_in_the_room_block.dart';
import 'package:cybearjinni/presentation/pages/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/printers_in_the_room_block.dart';
import 'package:cybearjinni/presentation/pages/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/security_cameras_in_the_room_block.dart';
import 'package:cybearjinni/presentation/pages/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/smart_computers_in_the_room_block.dart';
import 'package:cybearjinni/presentation/pages/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/smart_plug_in_the_room_block.dart';
import 'package:cybearjinni/presentation/pages/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/smart_tv_in_the_room.dart';
import 'package:cybearjinni/presentation/pages/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/switches_in_the_room_block.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

    return Container(
      margin: EdgeInsets.only(
        bottom: widget.bottomMargin,
        left: widget.leftMargin,
        right: widget.rightMargin,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.roomColorGradiant.listOfColors!.toList(),
          begin: Alignment.bottomLeft,
          end: Alignment.topLeft,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(widget.borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: AnimatedSize(
        duration: const Duration(milliseconds: 300),
        child: Container(
          margin: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.07),
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 12),
                alignment: Alignment.topCenter,
                child: Stack(
                  children: <Widget>[
                    TextAtom(
                      widget.room.cbjEntityName.getOrCrash(),
                      style: TextStyle(
                        fontSize: 23,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1.2
                          ..color = Colors.black,
                      ),
                    ),
                    TextAtom(
                      widget.room.cbjEntityName.getOrCrash(),
                      style: TextStyle(
                        fontSize: 23,
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
                  ],
                ),
              ),
              if (numberOfDevicesInTheRoom == 1)
                TextAtom(
                  '_device',
                  style: const TextStyle(fontSize: 12),
                  translationArgs: [numberOfDevicesInTheRoom.toString()],
                )
              else
                TextAtom(
                  '_devices',
                  style: const TextStyle(fontSize: 12),
                  translationArgs: [numberOfDevicesInTheRoom.toString()],
                ),

              /// Build the devices in the room by type
              GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 15,
                ),
                itemCount: widget.entitiesInTheRoom.length,
                itemBuilder: (BuildContext ctx, secondIndex) {
                  final DeviceEntityBase? entity = widget.entities[
                      widget.entitiesInTheRoom.elementAt(secondIndex)];
                  if (entity == null) {
                    return const SizedBox();
                  }

                  final EntityTypes deviceType = entity.entityTypes.type;

                  if (deviceType == EntityTypes.light ||
                      deviceType == EntityTypes.dimmableLight ||
                      deviceType == EntityTypes.rgbwLights) {
                    return LightsInTheRoomBlock.withAbstractDevice(
                      roomEntity: widget.room,
                      entities: [entity],
                      tempRoomColorGradiant: widget.roomColorGradiant,
                    );
                  } else if (deviceType == EntityTypes.switch_) {
                    return SwitchesInTheRoomBlock.withAbstractDevice(
                      roomEntityTemp: widget.room,
                      entities: [entity],
                      tempRoomColorGradiant: widget.roomColorGradiant,
                    );
                  } else if (deviceType == EntityTypes.blinds) {
                    return BlindsInTheRoom.withAbstractDevice(
                      roomEntity: widget.room,
                      tempDeviceInRoom: [entity],
                      tempRoomColorGradiant: widget.roomColorGradiant,
                    );
                  } else if (deviceType == EntityTypes.boiler) {
                    return BoilersInTheRoom.withAbstractDevice(
                      roomEntity: widget.room,
                      tempDeviceInRoom: [entity],
                      tempRoomColorGradiant: widget.roomColorGradiant,
                    );
                  } else if (deviceType == EntityTypes.smartTV) {
                    return SmartTvInTheRoom.withAbstractDevice(
                      roomEntity: widget.room,
                      tempDeviceInRoom: [entity],
                      tempRoomColorGradiant: widget.roomColorGradiant,
                    );
                  } else if (deviceType == EntityTypes.smartPlug) {
                    return SmartPlugsInTheRoomBlock.withAbstractDevice(
                      roomEntityTemp: widget.room,
                      entities: [entity],
                      tempRoomColorGradiant: widget.roomColorGradiant,
                    );
                  } else if (deviceType == EntityTypes.smartComputer) {
                    return SmartComputersInTheRoomBlock.withAbstractDevice(
                      roomEntityTemp: widget.room,
                      tempDeviceInRoom: [entity],
                      tempRoomColorGradiant: widget.roomColorGradiant,
                    );
                  } else if (deviceType == EntityTypes.printer) {
                    return PrintersInTheRoomBlock.withAbstractDevice(
                      roomEntityTemp: widget.room,
                      tempDeviceInRoom: [entity],
                      tempRoomColorGradiant: widget.roomColorGradiant,
                    );
                  } else if (deviceType == EntityTypes.securityCamera) {
                    return SecurityCamerasInTheRoomBlock.withAbstractDevice(
                      roomEntityTemp: widget.room,
                      tempDeviceInRoom: [entity],
                      tempRoomColorGradiant: widget.roomColorGradiant,
                    );
                  }

                  logger.w('Arrived here unsupported device type $deviceType');

                  return TextButton(
                    onPressed: () {
                      FlushbarHelper.createInformation(
                        message:
                            'This device is not supported\nName: ${entity.cbjEntityName.getOrCrash()}',
                      ).show(context);
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: FaIcon(
                            FontAwesomeIcons.eyeLowVision,
                            color: Colors.red,
                          ),
                        ),
                        TextAtom(
                          'Unsupported Type',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
