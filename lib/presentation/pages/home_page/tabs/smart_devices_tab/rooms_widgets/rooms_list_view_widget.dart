import 'dart:async';
import 'dart:collection';

import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/domain/room/value_objects_room.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybear_jinni/domain/i_phone_as_hub.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/pages/home_page/tabs/smart_devices_tab/rooms_widgets/rom_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class RoomsListViewWidget extends StatefulWidget {
  /// Builds the rooms
  const RoomsListViewWidget({
    required this.entities,
    required this.roomsList,
  });

  final HashMap<String, DeviceEntityBase> entities;
  final HashMap<String, RoomEntity> roomsList;

  @override
  State<RoomsListViewWidget> createState() => _RoomsListViewWidgetState();
}

class _RoomsListViewWidgetState extends State<RoomsListViewWidget> {
  Set<BannerAd> banners = {};

  final HashMap<String, DeviceEntityBase> entities = HashMap();
  final HashMap<String, RoomEntity> rooms = HashMap();

  /// Id of room and id lish of id of devies in the room
  final HashMap<String, Set<String>> devicesByRooms = HashMap();

  @override
  void initState() {
    super.initState();
    rooms.addAll(widget.roomsList);
    entities.addAll(widget.entities);
    initialzeEntitiesByRooms();
    _watchEntities();
  }

  @override
  void dispose() {
    entitiesStream?.cancel();
    super.dispose();
  }

  void initialzeEntitiesByRooms() {
    devicesByRooms.addAll(
      rooms
          .map((key, value) => MapEntry(key, value.roomDevicesId.getOrCrash())),
    );
  }

  StreamSubscription<MapEntry<String, DeviceEntityBase>>? entitiesStream;

  Future _watchEntities() async {
    await entitiesStream?.cancel();

    entitiesStream = IPhoneAsHub.instance
        .watchEntities()
        .listen((MapEntry<String, DeviceEntityBase> entityEntery) {
      if (!mounted ||
          entityEntery.value.entityTypes.type ==
              EntityTypes.smartTypeNotSupported ||
          entityEntery.value.entityTypes.type == EntityTypes.emptyEntity) {
        return;
      }

      final RoomEntity? discoverRoom = rooms[RoomUniqueId.discovereId];

      if (discoverRoom == null) {
        return;
      }
      discoverRoom.addDeviceId(entityEntery.key);
      setState(() {
        devicesByRooms[RoomUniqueId.discovereId]?.add(entityEntery.key);
        entities.addEntries([entityEntery]);
        rooms[RoomUniqueId.discovereId] = discoverRoom;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    int gradientColorCounter = 1;

    ListOfColors roomColorGradiant =
        ListOfColors(gradientColorsList[gradientColorCounter]);

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

        roomColorGradiant =
            ListOfColors(gradientColorsList[gradientColorCounter]);

        /// Color for Summary page
        if (index == gradientColorsList.length - 1) {
          leftMargin = 10;
          rightMargin = 10;
          bottomMargin = 15;
          borderRadius = 40;

          roomColorGradiant = ListOfColors(gradientColorsList[0]);
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
