import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cybear_jinni/application/blinds/blinds_actor/blinds_actor_bloc.dart';
import 'package:cybear_jinni/application/lights/lights_actor/lights_actor_bloc.dart';
import 'package:cybear_jinni/application/printers/printers_actor/printers_actor_bloc.dart';
import 'package:cybear_jinni/application/smart_computers/smart_computers_actor/smart_computers_actor_bloc.dart';
import 'package:cybear_jinni/application/smart_plugs/smart_plugs_actor/smart_plugs_actor_bloc.dart';
import 'package:cybear_jinni/application/smart_tv/smart_tv_actor/smart_tv_actor_bloc.dart';
import 'package:cybear_jinni/application/switches/switches_actor/switches_actor_bloc.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/blinds_in_the_room.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/boilers_in_the_room.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/lights_in_the_room_block.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/printers_in_the_room_block.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/rgbw_lights_in_the_room_block.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/smart_computers_in_the_room_block.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/smart_plug_in_the_room_block.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/smart_tv_in_the_room.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/switches_in_the_room_block.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoomWidget extends StatelessWidget {
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
  final List<Color> roomColorGradiant;
  final List<RoomEntity?> roomsList;
  final Map<String, Map<String, List<DeviceEntityAbstract>>>
      tempDevicesByRoomsByType;
  final String roomId;
  final int numberOfDevicesInTheRoom;
  final RoomEntity roomEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: bottomMargin,
        left: leftMargin,
        right: rightMargin,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: roomColorGradiant,
          begin: Alignment.bottomLeft,
          end: Alignment.topLeft,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius),
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
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 12),
                alignment: Alignment.topCenter,
                child: Stack(
                  children: <Widget>[
                    Text(
                      roomsList
                          .firstWhere(
                            (element) =>
                                element!.uniqueId.getOrCrash() == roomId,
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
                    Text(
                      roomsList
                          .firstWhere(
                            (element) =>
                                element!.uniqueId.getOrCrash() == roomId,
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
              if (numberOfDevicesInTheRoom == 1)
                const Text(
                  '_device',
                  style: TextStyle(fontSize: 12),
                ).tr(args: [numberOfDevicesInTheRoom.toString()])
              else
                const Text(
                  '_devices',
                  style: TextStyle(fontSize: 12),
                ).tr(args: [numberOfDevicesInTheRoom.toString()]),

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
                itemCount: tempDevicesByRoomsByType[roomId]!.keys.length,
                itemBuilder: (BuildContext ctx, secondIndex) {
                  final String deviceType = tempDevicesByRoomsByType[roomId]!
                      .keys
                      .elementAt(secondIndex);

                  final List<DeviceEntityAbstract> devicesInTheRoom =
                      tempDevicesByRoomsByType[roomId]![deviceType]!;

                  if (deviceType == DeviceTypes.light.toString()) {
                    return BlocProvider(
                      create: (context) => getIt<LightsActorBloc>(),
                      child: LightsInTheRoomBlock.withAbstractDevice(
                        roomEntity: roomEntity,
                        tempDeviceInRoom: devicesInTheRoom,
                        tempRoomColorGradiant: roomColorGradiant,
                      ),
                    );
                  } else if (deviceType == DeviceTypes.rgbwLights.toString()) {
                    return BlocProvider(
                      create: (context) => getIt<LightsActorBloc>(),
                      child: RgbwLightsInTheRoomBlock.withAbstractDevice(
                        roomEntity: roomEntity,
                        tempDeviceInRoom: devicesInTheRoom,
                        tempRoomColorGradiant: roomColorGradiant,
                      ),
                    );
                  } else if (deviceType == DeviceTypes.switch_.toString()) {
                    return BlocProvider(
                      create: (context) => getIt<SwitchesActorBloc>(),
                      child: SwitchesInTheRoomBlock.withAbstractDevice(
                        roomEntityTemp: roomsList.firstWhere(
                          (element) => element!.uniqueId.getOrCrash() == roomId,
                        )!,
                        tempDeviceInRoom: devicesInTheRoom,
                        tempRoomColorGradiant: roomColorGradiant,
                      ),
                    );
                  } else if (deviceType == DeviceTypes.blinds.toString()) {
                    return BlocProvider(
                      create: (context) => getIt<BlindsActorBloc>(),
                      child: BlindsInTheRoom.withAbstractDevice(
                        roomEntity: roomEntity,
                        tempDeviceInRoom: devicesInTheRoom,
                        temprRoomColorGradiant: roomColorGradiant,
                      ),
                    );
                  } else if (deviceType == DeviceTypes.boiler.toString()) {
                    //TODO: Boiler should not user Blinds block
                    return BlocProvider(
                      create: (context) => getIt<BlindsActorBloc>(),
                      child: BoilersInTheRoom.withAbstractDevice(
                        roomEntity: roomEntity,
                        tempDeviceInRoom: devicesInTheRoom,
                        tempRoomColorGradiant: roomColorGradiant,
                      ),
                    );
                  } else if (deviceType == DeviceTypes.smartTV.toString()) {
                    return BlocProvider(
                      create: (context) => getIt<SmartTvActorBloc>(),
                      child: SmartTvInTheRoom.withAbstractDevice(
                        roomEntity: roomEntity,
                        tempDeviceInRoom: devicesInTheRoom,
                        tempRoomColorGradiant: roomColorGradiant,
                      ),
                    );
                  } else if (deviceType == DeviceTypes.smartPlug.toString()) {
                    return BlocProvider(
                      create: (context) => getIt<SmartPlugsActorBloc>(),
                      child: SmartPlugsInTheRoomBlock.withAbstractDevice(
                        roomEntityTemp: roomsList.firstWhere(
                          (element) => element!.uniqueId.getOrCrash() == roomId,
                        )!,
                        tempDeviceInRoom: devicesInTheRoom,
                        tempRoomColorGradiant: roomColorGradiant,
                      ),
                    );
                  } else if (deviceType ==
                      DeviceTypes.smartComputer.toString()) {
                    return BlocProvider(
                      create: (context) => getIt<SmartComputersActorBloc>(),
                      child: SmartComputersInTheRoomBlock.withAbstractDevice(
                        roomEntityTemp: roomsList.firstWhere(
                          (element) => element!.uniqueId.getOrCrash() == roomId,
                        )!,
                        tempDeviceInRoom: devicesInTheRoom,
                        tempRoomColorGradiant: roomColorGradiant,
                      ),
                    );
                  } else if (deviceType == DeviceTypes.printer.toString()) {
                    return BlocProvider(
                      create: (context) => getIt<PrintersActorBloc>(),
                      child: PrintersInTheRoomBlock.withAbstractDevice(
                        roomEntityTemp: roomsList.firstWhere(
                          (element) => element!.uniqueId.getOrCrash() == roomId,
                        )!,
                        tempDeviceInRoom: devicesInTheRoom,
                        tempRoomColorGradiant: roomColorGradiant,
                      ),
                    );
                  }
                  return TextButton(
                    onPressed: () {
                      FlushbarHelper.createInformation(
                        message:
                            'This device is not supported\nName: ${devicesInTheRoom[secondIndex].cbjEntityName.getOrCrash()}',
                      ).show(context);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          child: FaIcon(
                            FontAwesomeIcons.eyeLowVision,
                            color: Colors.red,
                          ),
                        ),
                        Text(
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
