import 'dart:async';
import 'dart:collection';

import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/domain/connections_service.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:flutter/material.dart';

/// Show switch toggles in a container with the background color from smart area
/// object
class SwitchMolecule extends StatefulWidget {
  const SwitchMolecule(this.entity);

  final GenericSwitchDE entity;

  @override
  State<SwitchMolecule> createState() => _SwitchMoleculeState();
}

class _SwitchMoleculeState extends State<SwitchMolecule> {
  int sendNewColorEachMilliseconds = 200;
  Timer? timeFromLastColorChange;
  HSVColor? lastColoredPicked;

  Future<void> _changeAction(bool value) async {
    setEntityState(value ? EntityActions.on : EntityActions.off);
  }

  void setEntityState(EntityActions action) {
    final VendorsAndServices? vendor =
        widget.entity.cbjDeviceVendor.vendorsAndServices;
    if (vendor == null) {
      return;
    }
    final HashMap<VendorsAndServices, HashSet<String>> uniqueIdByVendor =
        HashMap();
    uniqueIdByVendor.addEntries(
      [
        MapEntry(
          vendor,
          HashSet<String>()
            ..addAll([widget.entity.deviceCbjUniqueId.getOrCrash()]),
        ),
      ],
    );
    ConnectionsService.instance.setEntityState(
      ActionObject(
        uniqueIdByVendor: uniqueIdByVendor,
        property: EntityProperties.lightSwitchState,
        actionType: action,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DeviceNameRowMolecule(
      widget.entity.cbjEntityName.getOrCrash()!,
      SwitchAtom(
        variant: SwitchVariant.switchVariant,
        onToggle: _changeAction,
        action: widget.entity.switchState.action,
        state: widget.entity.entityStateGRPC.state,
      ),
    );
  }
}
