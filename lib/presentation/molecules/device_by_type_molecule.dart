import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbenum.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/device_type_enums.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_blinds_device/generic_blinds_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_boiler_device/generic_boiler_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_dimmable_light_device/generic_dimmable_light_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_light_device/generic_light_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_printer_device/generic_printer_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_smart_computer_device/generic_smart_computer_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_smart_plug_device/generic_smart_plug_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_smart_tv/generic_smart_tv_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_switch_device/generic_switch_entity.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/molecules/molecules.dart';
import 'package:flutter/material.dart';

class DeviceByTypeMolecule extends StatelessWidget {
  const DeviceByTypeMolecule(this.entity);

  final DeviceEntityAbstract entity;

  @override
  Widget build(BuildContext context) {
    final EntityTypes? type =
        EnumHelperCbj.stringToDt(entity.entityTypes.getOrCrash());

    switch (type) {
      case EntityTypes.boiler:
        return BoilerMolecule(entity as GenericBoilerDE);
      case EntityTypes.blinds:
        return BlindMolecule(entity as GenericBlindsDE);
      case EntityTypes.printer:
        return PrinterMolecule(entity as GenericPrinterDE);
      case EntityTypes.smartComputer:
        return SmartComputerMolecule(entity as GenericSmartComputerDE);
      case EntityTypes.smartPlug:
        return SmartPlugsMolecule(entity as GenericSmartPlugDE);
      case EntityTypes.smartTV:
        return SmartTvMolecule(entity as GenericSmartTvDE);
      case EntityTypes.switch_:
        return SwitchMolecule(entity as GenericSwitchDE);
      case EntityTypes.light:
        return LightMolecule(entity as GenericLightDE);
      case EntityTypes.rgbLights:
        return RgbwLightMolecule(entity as GenericRgbwLightDE);
      case EntityTypes.dimmableLight:
        return DimmableLightMolecule(entity as GenericDimmableLightDE);

      default:
        return TextAtom('Device type not supported ${type?.name ?? 'null'}');
    }
  }
}
