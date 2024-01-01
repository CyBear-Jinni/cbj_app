import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/core/request_types.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybearjinni/domain/connections_service.dart';
import 'package:cybearjinni/presentation/atoms/circular_progress_indicator_atom.dart';
import 'package:cybearjinni/presentation/organisms/organisms.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EntitiesInRoomPage extends StatefulWidget {
  const EntitiesInRoomPage({
    required this.roomEntity,
    required this.entityTypes,
  });

  /// If it have value will only show Printers in this room
  final RoomEntity roomEntity;
  final Set<EntityTypes> entityTypes;

  @override
  State<EntitiesInRoomPage> createState() => _EntitiesInRoomPageState();
}

class _EntitiesInRoomPageState extends State<EntitiesInRoomPage> {
  Set<DeviceEntityBase>? devices;
  late bool showAllTypes;

  @override
  void initState() {
    super.initState();
    showAllTypes = widget.entityTypes.isEmpty;
    initialzeDevices();
  }

  Future initialzeDevices() async {
    final Map<String, DeviceEntityBase> devicesMap =
        await ConnectionsService.instance.getAllEntities;
    final Set<String> deviceIdsInRoom =
        widget.roomEntity.roomDevicesId.getOrCrash();
    final Set<EntityTypes> entityTypes = widget.entityTypes;
    final Set<DeviceEntityBase> tempDevices;

    tempDevices = devicesMap.values
        .where(
          (element) =>
              deviceIdsInRoom.contains(element.getCbjDeviceId) &&
              (showAllTypes || entityTypes.contains(element.entityTypes.type)),
        )
        .toSet();

    setState(() {
      devices = tempDevices;
    });
  }

  @override
  Widget build(BuildContext context) {
    String pageName = '';

    if (showAllTypes) {
      pageName = '${widget.roomEntity.cbjEntityName.getOrCrash()} Entities';
    } else if (devices != null) {
      pageName =
          '${widget.roomEntity.cbjEntityName.getOrCrash()} ${widget.entityTypes.firstOrNull?.name}';
    }

    return PageOrganism(
      pageName: pageName,
      child: devices != null
          ? OpenRoomOrganism(
              roomEntity: widget.roomEntity,
              entityTypes: widget.entityTypes,
              devices: devices!,
            )
          : const CircularProgressIndicatorAtom(),
    );
  }
}
