import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/value_objects_core.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_light_entity/generic_light_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_light_entity/generic_light_value_objects.dart';
import 'package:cybearjinni/domain/device/i_device_repository.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';

class LightCardMolecule extends StatelessWidget {
  const LightCardMolecule(this.entity);

  final GenericLightDE? entity;

  Future<void> _onChange(bool value) async {
    final GenericLightDE tempDeviceEntity = entity!
      ..entityStateGRPC = EntityState.state(EntityStateGRPC.waitingInCloud)
      ..lightSwitchState = GenericLightSwitchState(value.toString());

    if (value) {
      await IDeviceRepository.instance.turnOnDevices(
        devicesId: [tempDeviceEntity.deviceCbjUniqueId.getOrCrash()],
      );
    } else {
      await IDeviceRepository.instance.turnOffDevices(
        devicesId: [tempDeviceEntity.deviceCbjUniqueId.getOrCrash()],
      );
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
