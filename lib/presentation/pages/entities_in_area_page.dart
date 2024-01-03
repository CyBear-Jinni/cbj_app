import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/domain/connections_service.dart';
import 'package:cybearjinni/presentation/atoms/circular_progress_indicator_atom.dart';
import 'package:cybearjinni/presentation/organisms/organisms.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EntitiesInAreaPage extends StatefulWidget {
  const EntitiesInAreaPage({
    required this.areaEntity,
    required this.entityTypes,
  });

  /// If it have value will only show Printers in this area
  final AreaEntity areaEntity;
  final Set<EntityTypes> entityTypes;

  @override
  State<EntitiesInAreaPage> createState() => _EntitiesInAreaPageState();
}

class _EntitiesInAreaPageState extends State<EntitiesInAreaPage> {
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
    final Set<String> deviceIdsInArea =
        widget.areaEntity.entitiesId.getOrCrash();
    final Set<EntityTypes> entityTypes = widget.entityTypes;
    final Set<DeviceEntityBase> tempDevices;

    tempDevices = devicesMap.values
        .where(
          (element) =>
              deviceIdsInArea.contains(element.getCbjDeviceId) &&
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
      pageName = '${widget.areaEntity.cbjEntityName.getOrCrash()} Entities';
    } else if (devices != null) {
      pageName =
          '${widget.areaEntity.cbjEntityName.getOrCrash()} ${widget.entityTypes.firstOrNull?.name}';
    }

    return PageOrganism(
      pageName: pageName,
      child: devices != null
          ? OpenAreaOrganism(
              areaEntity: widget.areaEntity,
              entityTypes: widget.entityTypes,
              devices: devices!,
            )
          : const CircularProgressIndicatorAtom(),
    );
  }
}
