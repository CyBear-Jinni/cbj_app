import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:cybearjinni/presentation/organisms/organisms.dart';
import 'package:flutter/material.dart';

class OpenAreaOrganism extends StatefulWidget {
  const OpenAreaOrganism({
    required this.areaEntity,
    required this.entityTypes,
    required this.devices,
  });

  /// If it have value will only show Printers in this area
  final AreaEntity areaEntity;
  final Set<EntityTypes> entityTypes;
  final Set<DeviceEntityBase> devices;

  @override
  State<OpenAreaOrganism> createState() => _OpenAreaOrganismState();
}

class _OpenAreaOrganismState extends State<OpenAreaOrganism> {
  @override
  Widget build(BuildContext context) {
    if (widget.devices.isEmpty) {
      return EmptyOpenAreaOrganism();
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
