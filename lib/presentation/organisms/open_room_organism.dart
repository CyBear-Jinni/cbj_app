import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/i_phone_as_hub.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/molecules/molecules.dart';
import 'package:cybear_jinni/presentation/organisms/organisms.dart';
import 'package:flutter/material.dart';

class OpenRoomOrganism extends StatefulWidget {
  const OpenRoomOrganism({
    required this.roomEntity,
    required this.roomColorGradiant,
    this.entityTypes,
  });

  /// If it have value will only show Printers in this room
  final RoomEntity roomEntity;
  final List<Color>? roomColorGradiant;
  final EntityTypes? entityTypes;

  @override
  State<OpenRoomOrganism> createState() => _OpenRoomOrganismState();
}

class _OpenRoomOrganismState extends State<OpenRoomOrganism> {
  List<DeviceEntityAbstract>? devices;

  @override
  void initState() {
    super.initState();
    initialzeDevices();
  }

  Future initialzeDevices() async {
    final Map<String, DeviceEntityAbstract> devicesMap =
        await IPhoneAsHub.instance.getAllEntities;
    final Set<String> deviceIdsInRoom =
        widget.roomEntity.roomDevicesId.getOrCrash().toSet();

    final String? entityTypeName = widget.entityTypes?.name;

    final List<DeviceEntityAbstract> tempDevices = devicesMap.values
        .where(
          (element) =>
              deviceIdsInRoom
                  .contains(element.deviceCbjUniqueId.getOrCrash()) &&
              (entityTypeName == null ||
                  entityTypeName == element.entityTypes.getOrCrash()),
        )
        .toList();

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

    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: ListView.builder(
          reverse: true,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            final DeviceEntityAbstract device = devices![index];

            return DeviceByTypeMolecule(device);
          },
          itemCount: devices!.length,
        ),
      ),
    );
  }
}
