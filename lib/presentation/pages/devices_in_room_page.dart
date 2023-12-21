import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/organisms/organisms.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DevicesInRoomPage extends StatelessWidget {
  const DevicesInRoomPage({
    required this.roomEntity,
    required this.roomColorGradiant,
   required this.entityTypes ,
  });  

  /// If it have value will only show Printers in this room
  final RoomEntity roomEntity;
  final ListOfColors? roomColorGradiant;
  final List<EntityTypes> entityTypes;

  @override
  Widget build(BuildContext context) {
    return PageOrganism(
      pageName: 'Device ${entityTypes.first.name }',
      topBarColor: roomColorGradiant!.listOfColors!.last,
      child: OpenRoomOrganism(
        roomEntity: roomEntity,
        roomColorGradiant: roomColorGradiant?.listOfColors,
        entityTypes: entityTypes,
      ),
    );
  }
}
