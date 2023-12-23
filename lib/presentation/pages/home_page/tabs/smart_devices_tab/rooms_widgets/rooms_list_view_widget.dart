import 'dart:collection';

import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybearjinni/presentation/core/theme_data.dart';
import 'package:cybearjinni/presentation/pages/home_page/tabs/smart_devices_tab/rooms_widgets/rom_widget.dart';
import 'package:flutter/material.dart';

class RoomsListViewWidget extends StatelessWidget {
  const RoomsListViewWidget({
    required this.entities,
    required this.rooms,
  });

  final HashMap<String, DeviceEntityBase> entities;
  final HashMap<String, RoomEntity> rooms;

  HashMap<String, Set<String>> initialzeEntitiesByRooms() {
    final HashMap<String, Set<String>> devicesByRooms = HashMap();

    devicesByRooms.addAll(
      rooms
          .map((key, value) => MapEntry(key, value.roomDevicesId.getOrCrash())),
    );
    return devicesByRooms;
  }

  @override
  Widget build(BuildContext context) {
    final HashMap<String, Set<String>> devicesByRooms =
        initialzeEntitiesByRooms();

    int gradientColorCounter = 1;

    ListOfColors roomColorGradiant = ListOfColors(
      gradientColorsList.elementAt(gradientColorCounter).toSet(),
    );

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        final String roomId = devicesByRooms.keys.elementAt(index);
        final Set<String>? entitiesInTheRoom = devicesByRooms[roomId];
        final RoomEntity? room = rooms[roomId];

        if (entitiesInTheRoom == null || room == null) {
          return const SizedBox();
        }

        double bottomMargin = 15;
        double leftMargin = 0;
        double rightMargin = 0;
        double borderRadius = 5;

        if (gradientColorCounter >= gradientColorsList.length) {
          gradientColorCounter = 1;
        } else {
          gradientColorCounter++;
        }

        roomColorGradiant = ListOfColors(
          gradientColorsList.elementAt(gradientColorCounter).toSet(),
        );

        /// Color for Summary page
        if (index == gradientColorsList.length - 1) {
          leftMargin = 10;
          rightMargin = 10;
          bottomMargin = 15;
          borderRadius = 40;

          roomColorGradiant = ListOfColors(gradientColorsList.first.toSet());
          if (gradientColorCounter < 1) {
            gradientColorCounter--;
          } else {
            gradientColorCounter = gradientColorsList.length;
          }
          bottomMargin = 0;
        }
        return RoomWidget(
          room: room,
          rooms: rooms,
          entities: entities,
          entitiesInTheRoom: entitiesInTheRoom,
          borderRadius: borderRadius,
          bottomMargin: bottomMargin,
          leftMargin: leftMargin,
          rightMargin: rightMargin,
          roomColorGradiant: roomColorGradiant,
        );
      },
      itemCount: devicesByRooms.length,
    );
  }
}
