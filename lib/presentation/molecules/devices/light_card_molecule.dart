import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';

class LightCardMolecule extends StatelessWidget {
  const LightCardMolecule(this.entity);

  final GenericLightDE? entity;

  Future _onChange(bool value) async {
    // final GenericLightDE tempDeviceEntity = entity!
    //   ..entityStateGRPC = EntityState.state(EntityStateGRPC.waitingInCloud)
    //   ..lightSwitchState = GenericLightSwitchState(value.toString());

    if (value) {
      // await IDeviceRepository.instance.turnOnDevices(
      //   devicesId: [tempDeviceEntity.entitiyCbjUniqueId.getOrCrash()],
      // );
    } else {
      // await IDeviceRepository.instance.turnOffDevices(
      //   devicesId: [tempDeviceEntity.entitiyCbjUniqueId.getOrCrash()],
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SwitchAtom(
      variant: SwitchVariant.light,
      onToggle: _onChange,
      action: entity!.lightSwitchState.action,
      state: entity!.entityStateGRPC.state,
    );
  }
}
