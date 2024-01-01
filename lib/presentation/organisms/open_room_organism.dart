import 'package:cbj_integrations_controller/domain/core/request_types.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:cybearjinni/presentation/organisms/organisms.dart';
import 'package:flutter/material.dart';

class OpenRoomOrganism extends StatefulWidget {
  const OpenRoomOrganism({
    required this.roomEntity,
    required this.entityTypes,
    required this.devices,
  });

  /// If it have value will only show Printers in this room
  final RoomEntity roomEntity;
  final Set<EntityTypes> entityTypes;
  final Set<DeviceEntityBase> devices;

  @override
  State<OpenRoomOrganism> createState() => _OpenRoomOrganismState();
}

class _OpenRoomOrganismState extends State<OpenRoomOrganism> {
  @override
  Widget build(BuildContext context) {
    if (widget.devices.isEmpty) {
      return EmptyOpenRoomOrganism();
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      child: ListView.separated(
        reverse: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final DeviceEntityBase device = widget.devices.elementAt(index);

          return DeviceByTypeMolecule(device);
        },
        itemCount: widget.devices.length,
        separatorBuilder: (BuildContext context, int index) =>
            const SeparatorAtom(variant: SeparatorVariant.farAppart),
      ),
    );
  }
}
