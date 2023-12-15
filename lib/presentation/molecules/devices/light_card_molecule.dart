import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/value_objects_core.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_light_entity/generic_light_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_light_entity/generic_light_value_objects.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LightCardMolecule extends StatelessWidget {
  const LightCardMolecule(this.entity);

  final GenericLightDE? entity;

  Future<void> _onChange(bool value) async {
    final GenericLightDE tempDeviceEntity = entity!
      ..entityStateGRPC = EntityState(EntityStateGRPC.waitingInCloud.toString())
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
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    final deviceState = entity!.entityStateGRPC.getOrCrash();
    final deviceAction = entity!.lightSwitchState!.getOrCrash();

    bool toggleValue = false;
    Color toggleColor = Colors.blueGrey;

    if (deviceAction == EntityActions.on.toString()) {
      toggleValue = true;
      if (deviceState == EntityStateGRPC.ack.toString()) {
        toggleColor = const Color(0xFFFFDF5D);
      }
    } else {
      if (deviceState == EntityStateGRPC.ack.toString()) {
        toggleColor = Theme.of(context).primaryColorDark;
      }
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: sizeBoxWidth + 15,
      child: FlutterSwitch(
        width: screenSize.width * 0.25,
        height: screenSize.height * 0.065,
        toggleSize: screenSize.height * 0.065,
        value: toggleValue,
        borderRadius: 25.0,
        padding: 0.0,
        activeToggleColor: const Color(0xFF2F363D),
        inactiveToggleColor: Theme.of(context).primaryColor,
        activeSwitchBorder: Border.all(
          color: Theme.of(context).textTheme.bodyLarge!.color!,
        ),
        inactiveSwitchBorder: Border.all(
          color: Theme.of(context).textTheme.bodyLarge!.color!,
        ),
        activeColor: toggleColor,
        inactiveColor: toggleColor,
        activeIcon: const Icon(
          FontAwesomeIcons.solidLightbulb,
          color: Color(0xFFF8E3A1),
        ),
        inactiveIcon: Icon(
          FontAwesomeIcons.lightbulb,
          color: Theme.of(context).textTheme.bodyLarge!.color,
        ),
        onToggle: _onChange,
      ),
    );
  }
}
