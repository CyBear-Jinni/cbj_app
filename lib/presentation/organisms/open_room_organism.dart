import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybearjinni/domain/connections_service.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:cybearjinni/presentation/organisms/organisms.dart';
import 'package:flutter/material.dart';

class OpenRoomOrganism extends StatefulWidget {
  const OpenRoomOrganism({
    required this.roomEntity,
    required this.roomColorGradiant,
    required this.entityTypes,
  });

  /// If it have value will only show Printers in this room
  final RoomEntity roomEntity;
  final Set<Color>? roomColorGradiant;
  final Set<EntityTypes> entityTypes;

  @override
  State<OpenRoomOrganism> createState() => _OpenRoomOrganismState();
}

class _OpenRoomOrganismState extends State<OpenRoomOrganism> {
  Set<DeviceEntityBase>? devices;

  @override
  void initState() {
    super.initState();
    initialzeDevices();
  }

  Future initialzeDevices() async {
    final Map<String, DeviceEntityBase> devicesMap =
        await ConnectionsService.instance.getAllEntities;
    final Set<String> deviceIdsInRoom =
        widget.roomEntity.roomDevicesId.getOrCrash();
    final Set<EntityTypes> entityTypes = widget.entityTypes;
    if (entityTypes.isEmpty) {
      return;
    }
    final Set<DeviceEntityBase> tempDevices = devicesMap.values
        .where(
          (element) =>
              deviceIdsInRoom.contains(element.getCbjDeviceId) &&
              entityTypes.contains(element.entityTypes.type),
        )
        .toSet();

    setState(() {
      devices = tempDevices;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (devices == null) {
      return const CircularProgressIndicatorAtom();
    }

    if (devices!.isEmpty) {
      return EmptyOpenRoomOrganism();
    }

    final ThemeData themeData = Theme.of(context);
    final TextTheme textTheme = themeData.textTheme;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      child: ListView.separated(
        reverse: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final DeviceEntityBase device = devices!.elementAt(index);

          return Column(
            children: [
              TextAtom(
                device.cbjEntityName.getOrCrash() ?? '',
                style: textTheme.titleMedium,
              ),
              const SeparatorAtom(SeparatorVariant.closeWidgets),
              DeviceByTypeMolecule(device),
            ],
          );
        },
        itemCount: devices!.length,
        separatorBuilder: (BuildContext context, int index) =>
            const SeparatorAtom(SeparatorVariant.generalSpacing),
      ),
    );
  }
}
