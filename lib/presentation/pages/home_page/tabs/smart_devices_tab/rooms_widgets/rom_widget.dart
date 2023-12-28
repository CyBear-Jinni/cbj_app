import 'dart:collection';

import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/routes/app_router.gr.dart';
import 'package:cybearjinni/presentation/organisms/organisms.dart';
import 'package:flutter/material.dart';

class RoomWidget extends StatefulWidget {
  const RoomWidget({
    required this.room,
    required this.rooms,
    required this.entities,
    required this.entitiesInTheRoom,
  });

  final RoomEntity room;
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

    final ThemeData themeData = Theme.of(context);
    final TextTheme textTheme = themeData.textTheme;
    final ColorScheme colorScheme = themeData.colorScheme;

    final int numberOfDevicesInTheRoom = widget.entitiesInTheRoom.length;

    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      child: Column(
        children: [
          TextButton(
            onPressed: () {
              context.router.push(
                EntitiesInRoomRoute(
                  entityTypes: const {},
                  roomEntity: widget.room,
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  TextAtom(
                    widget.room.cbjEntityName.getOrCrash(),
                    style: textTheme.headlineSmall!
                        .copyWith(color: colorScheme.secondary),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  TextAtom(
                    numberOfDevicesInTheRoom >= 2
                        ? numberOfDevicesInTheRoom.toString()
                        : '',
                    style: textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ),
          const SeparatorAtom(variant: SeparatorVariant.closeWidgets),
          DevicesListView(
            HashSet.from(widget.entities.values),
            (entity) {
              context.router.push(
                EntitiesInRoomRoute(
                  entityTypes: entity,
                  roomEntity: widget.room,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
