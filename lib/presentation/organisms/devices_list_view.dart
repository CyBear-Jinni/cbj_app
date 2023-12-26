import 'dart:collection';

import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:flutter/material.dart';

class DevicesListView extends StatelessWidget {
  const DevicesListView(this.devices);

  final HashSet<DeviceEntityBase> devices;

  @override
  Widget build(BuildContext context) {
    return ListViewMolecule(
      ListViewVeriant.builder,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final DeviceEntityBase device = devices.elementAt(index);
        return CardAtom(
          ListTileAtom(
            headline: device.cbjEntityName.getOrCrash(),
            supportingText: device.entityStateGRPC.getOrCrash(),
            leadingIcon: Icons.light,
          ),
        );
      },
      itemCount: devices.length,
    );
  }
}
