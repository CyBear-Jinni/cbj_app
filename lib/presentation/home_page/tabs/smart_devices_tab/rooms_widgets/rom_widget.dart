import 'package:cybear_jinni/application/blinds/blinds_actor/blinds_actor_bloc.dart';
import 'package:cybear_jinni/application/lights/lights_actor/lights_actor_bloc.dart';
import 'package:cybear_jinni/application/smart_tv/smart_tv_actor/smart_tv_actor_bloc.dart';
import 'package:cybear_jinni/application/switches/switches_actor/switches_actor_bloc.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/blinds_in_the_room.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/boilers_in_the_room.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/lights_in_the_room_block.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/rgbw_lights_in_the_room_block.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/smart_tv_in_the_room.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/devices_in_the_room_blocks/switches_in_the_room_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoomWidget extends StatelessWidget {
  RoomWidget({
    required this.roomColorGradiant,
    required int index,
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
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(
              0,
              3,
            ), // changes position of shadow
          ),
        ],
      ),
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
              child: Text(
                roomsList
                    .firstWhere(
                      (element) => element!.uniqueId.getOrCrash() == roomId,
                    )!
                    .defaultName
                    .getOrCrash(),
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
              ),
            ),
            if (numberOfDevicesInTheRoom == 1)
              Text(
                '$numberOfDevicesInTheRoom device',
                style: const TextStyle(fontSize: 12),
              )
            else
              Text(
                '$numberOfDevicesInTheRoom devices',
                style: const TextStyle(fontSize: 12),
              ),

            /// Build the devices in the room by type
            GridView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 1.0,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15,
              ),
              itemCount: tempDevicesByRoomsByType[roomId]!.keys.length,
              itemBuilder: (BuildContext ctx, secondIndex) {
                final String deviceType = tempDevicesByRoomsByType[roomId]!
                    .keys
                    .elementAt(secondIndex);
                if (deviceType == DeviceTypes.light.toString()) {
                  return BlocProvider(
                    create: (context) => getIt<LightsActorBloc>(),
                    child: LightsInTheRoomBlock.withAbstractDevice(
                      roomEntity: roomEntity,
                      tempDeviceInRoom:
                          tempDevicesByRoomsByType[roomId]![deviceType]!,
                      tempRoomColorGradiant: roomColorGradiant,
                    ),
                  );
                } else if (deviceType == DeviceTypes.rgbwLights.toString()) {
                  return BlocProvider(
                    create: (context) => getIt<LightsActorBloc>(),
                    child: RgbwLightsInTheRoomBlock.withAbstractDevice(
                      roomEntity: roomEntity,
                      tempDeviceInRoom:
                          tempDevicesByRoomsByType[roomId]![deviceType]!,
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
                      tempDeviceInRoom:
                          tempDevicesByRoomsByType[roomId]![deviceType]!,
                      tempRoomColorGradiant: roomColorGradiant,
                    ),
                  );
                } else if (deviceType == DeviceTypes.blinds.toString()) {
                  return BlocProvider(
                    create: (context) => getIt<BlindsActorBloc>(),
                    child: BlindsInTheRoom.withAbstractDevice(
                      roomEntity: roomEntity,
                      tempDeviceInRoom:
                          tempDevicesByRoomsByType[roomId]![deviceType]!,
                      temprRoomColorGradiant: roomColorGradiant,
                    ),
                  );
                } else if (deviceType == DeviceTypes.boiler.toString()) {
                  //TODO: Boiler should not user Blinds block
                  return BlocProvider(
                    create: (context) => getIt<BlindsActorBloc>(),
                    child: BoilersInTheRoom.withAbstractDevice(
                      roomEntity: roomEntity,
                      tempDeviceInRoom:
                          tempDevicesByRoomsByType[roomId]![deviceType]!,
                      tempRoomColorGradiant: roomColorGradiant,
                    ),
                  );
                } else if (deviceType == DeviceTypes.smartTV.toString()) {
                  return BlocProvider(
                    create: (context) => getIt<SmartTvActorBloc>(),
                    child: SmartTvInTheRoom.withAbstractDevice(
                      roomEntity: roomEntity,
                      tempDeviceInRoom:
                          tempDevicesByRoomsByType[roomId]![deviceType]!,
                      tempRoomColorGradiant: roomColorGradiant,
                    ),
                  );
                }
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      child: FaIcon(
                        FontAwesomeIcons.lowVision,
                        color: Colors.red,
                      ),
                    ),
                    Text('Not Supported'),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
