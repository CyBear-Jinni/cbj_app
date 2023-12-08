import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/infrastructure/core/logger.dart';
import 'package:cybear_jinni/presentation/pages/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/blinds_in_the_room.dart';
import 'package:cybear_jinni/presentation/pages/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/boilers_in_the_room.dart';
import 'package:cybear_jinni/presentation/pages/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/lights_in_the_room_block.dart';
import 'package:cybear_jinni/presentation/pages/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/printers_in_the_room_block.dart';
import 'package:cybear_jinni/presentation/pages/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/security_cameras_in_the_room_block.dart';
import 'package:cybear_jinni/presentation/pages/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/smart_computers_in_the_room_block.dart';
import 'package:cybear_jinni/presentation/pages/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/smart_plug_in_the_room_block.dart';
import 'package:cybear_jinni/presentation/pages/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/smart_tv_in_the_room.dart';
import 'package:cybear_jinni/presentation/pages/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/switches_in_the_room_block.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoomWidget extends StatefulWidget {
  const RoomWidget({
    required this.roomColorGradiant,
    required this.roomsList,
    required this.tempDevicesByRoomsByType,
    required this.bottomMargin,
    required this.leftMargin,
    required this.rightMargin,
    required this.borderRadius,
    required this.roomId,
    required this.numberOfDevicesInTheRoom,
    required this.roomEntity,
  });

  final double bottomMargin;
  final double leftMargin;
  final double rightMargin;
  final double borderRadius;
  final ListOfColors roomColorGradiant;
  final List<RoomEntity?> roomsList;
  final Map<String, Map<String, List<DeviceEntityAbstract>>>
      tempDevicesByRoomsByType;
  final String roomId;
  final int numberOfDevicesInTheRoom;
  final RoomEntity roomEntity;

  @override
  State<RoomWidget> createState() => _RoomWidgetState();
}

class _RoomWidgetState extends State<RoomWidget> {
  @override
  Widget build(BuildContext context) {
    bool didAddedLights = false;

    return Container(
      margin: EdgeInsets.only(
        bottom: widget.bottomMargin,
        left: widget.leftMargin,
        right: widget.rightMargin,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.roomColorGradiant.listOfColors!,
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
            offset: const Offset(
              0,
              3,
            ), // changes position of shadow
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
                      widget.roomsList
                          .firstWhere(
                            (element) =>
                                element!.uniqueId.getOrCrash() == widget.roomId,
                          )!
                          .cbjEntityName
                          .getOrCrash(),
                      style: TextStyle(
                        fontSize: 23,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1.2
                          ..color = Colors.black,
                      ),
                    ),
                    TextAtom(
                      widget.roomsList
                          .firstWhere(
                            (element) =>
                                element!.uniqueId.getOrCrash() == widget.roomId,
                          )!
                          .cbjEntityName
                          .getOrCrash(),
                      style: TextStyle(
                        fontSize: 23,
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                      ),
                    ),
                  ],
                ),
              ),
              if (widget.numberOfDevicesInTheRoom == 1)
                TextAtom(
                  '_device',
                  style: const TextStyle(fontSize: 12),
                  translationArgs: [widget.numberOfDevicesInTheRoom.toString()],
                )
              else
                TextAtom(
                  '_devices',
                  style: const TextStyle(fontSize: 12),
                  translationArgs: [widget.numberOfDevicesInTheRoom.toString()],
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
                itemCount:
                    widget.tempDevicesByRoomsByType[widget.roomId]!.keys.length,
                itemBuilder: (BuildContext ctx, secondIndex) {
                  final String deviceType = widget
                      .tempDevicesByRoomsByType[widget.roomId]!.keys
                      .elementAt(secondIndex);

                  List<DeviceEntityAbstract> devicesInTheRoom = widget
                      .tempDevicesByRoomsByType[widget.roomId]![deviceType]!;

                  if (deviceType == EntityTypes.light.toString() ||
                      deviceType == EntityTypes.dimmableLight.toString() ||
                      deviceType == EntityTypes.rgbwLights.toString()) {
                    if (didAddedLights) {
                      return const SizedBox();
                    }
                    didAddedLights = true;

                    devicesInTheRoom = [];

                    final List<DeviceEntityAbstract>?
                        tempLightDevicesInTheRoom =
                        widget.tempDevicesByRoomsByType[widget.roomId]
                            ?[EntityTypes.light.toString()];
                    devicesInTheRoom.addAll(tempLightDevicesInTheRoom ?? []);

                    final List<DeviceEntityAbstract>?
                        tempDimmableLightDevicesInTheRoom =
                        widget.tempDevicesByRoomsByType[widget.roomId]
                            ?[EntityTypes.dimmableLight.toString()];
                    devicesInTheRoom
                        .addAll(tempDimmableLightDevicesInTheRoom ?? []);

                    final List<DeviceEntityAbstract>?
                        tempRgbwLightDevicesInTheRoom =
                        widget.tempDevicesByRoomsByType[widget.roomId]
                            ?[EntityTypes.rgbwLights.toString()];
                    devicesInTheRoom
                        .addAll(tempRgbwLightDevicesInTheRoom ?? []);

                    return LightsInTheRoomBlock.withAbstractDevice(
                      roomEntity: widget.roomEntity,
                      tempDeviceInRoom: devicesInTheRoom,
                      tempRoomColorGradiant: widget.roomColorGradiant,
                    );
                  } else if (deviceType == EntityTypes.switch_.toString()) {
                    return SwitchesInTheRoomBlock.withAbstractDevice(
                      roomEntityTemp: widget.roomsList.firstWhere(
                        (element) =>
                            element!.uniqueId.getOrCrash() == widget.roomId,
                      )!,
                      tempDeviceInRoom: devicesInTheRoom,
                      tempRoomColorGradiant: widget.roomColorGradiant,
                    );
                  } else if (deviceType == EntityTypes.blinds.toString()) {
                    return BlindsInTheRoom.withAbstractDevice(
                      roomEntity: widget.roomEntity,
                      tempDeviceInRoom: devicesInTheRoom,
                      tempRoomColorGradiant: widget.roomColorGradiant,
                    );
                  } else if (deviceType == EntityTypes.boiler.toString()) {
                    return BoilersInTheRoom.withAbstractDevice(
                      roomEntity: widget.roomEntity,
                      tempDeviceInRoom: devicesInTheRoom,
                      tempRoomColorGradiant: widget.roomColorGradiant,
                    );
                  } else if (deviceType == EntityTypes.smartTV.toString()) {
                    return SmartTvInTheRoom.withAbstractDevice(
                      roomEntity: widget.roomEntity,
                      tempDeviceInRoom: devicesInTheRoom,
                      tempRoomColorGradiant: widget.roomColorGradiant,
                    );
                  } else if (deviceType == EntityTypes.smartPlug.toString()) {
                    return SmartPlugsInTheRoomBlock.withAbstractDevice(
                      roomEntityTemp: widget.roomsList.firstWhere(
                        (element) =>
                            element!.uniqueId.getOrCrash() == widget.roomId,
                      )!,
                      tempDeviceInRoom: devicesInTheRoom,
                      tempRoomColorGradiant: widget.roomColorGradiant,
                    );
                  } else if (deviceType ==
                      EntityTypes.smartComputer.toString()) {
                    return SmartComputersInTheRoomBlock.withAbstractDevice(
                      roomEntityTemp: widget.roomsList.firstWhere(
                        (element) =>
                            element!.uniqueId.getOrCrash() == widget.roomId,
                      )!,
                      tempDeviceInRoom: devicesInTheRoom,
                      tempRoomColorGradiant: widget.roomColorGradiant,
                    );
                  } else if (deviceType == EntityTypes.printer.toString()) {
                    return PrintersInTheRoomBlock.withAbstractDevice(
                      roomEntityTemp: widget.roomsList.firstWhere(
                        (element) =>
                            element!.uniqueId.getOrCrash() == widget.roomId,
                      )!,
                      tempDeviceInRoom: devicesInTheRoom,
                      tempRoomColorGradiant: widget.roomColorGradiant,
                    );
                  } else if (deviceType ==
                      EntityTypes.securityCamera.toString()) {
                    return SecurityCamerasInTheRoomBlock.withAbstractDevice(
                      roomEntityTemp: widget.roomsList.firstWhere(
                        (element) =>
                            element!.uniqueId.getOrCrash() == widget.roomId,
                      )!,
                      tempDeviceInRoom: devicesInTheRoom,
                      tempRoomColorGradiant: widget.roomColorGradiant,
                    );
                  }

                  logger.w('Arrived here unsupported device type $deviceType');

                  return TextButton(
                    onPressed: () {
                      FlushbarHelper.createInformation(
                        message:
                            'This device is not supported\nName: ${devicesInTheRoom[secondIndex].cbjEntityName.getOrCrash()}',
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
