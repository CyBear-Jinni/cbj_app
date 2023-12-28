import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbenum.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/abstract_entity/device_entity_base.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/entity_type_utils.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_blinds_entity/generic_blinds_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_boiler_entity/generic_boiler_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_dimmable_light_entity/generic_dimmable_light_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_light_entity/generic_light_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_printer_entity/generic_printer_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_rgbw_light_entity/generic_rgbw_light_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_smart_computer_entity/generic_smart_computer_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_smart_plug_entity/generic_smart_plug_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_smart_tv_entity/generic_smart_tv_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_switch_entity/generic_switch_entity.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:flutter/material.dart';

class DeviceByTypeMolecule extends StatelessWidget {
  const DeviceByTypeMolecule(this.entity);

  final DeviceEntityBase entity;

  @override
  Widget build(BuildContext context) {
    final EntityTypes? type =
        EntityUtils.stringToDt(entity.entityTypes.getOrCrash());

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
      case EntityTypes.rgbwLights:
        return RgbwLightMolecule(entity as GenericRgbwLightDE);
      case EntityTypes.dimmableLight:
        return DimmableLightMolecule(entity as GenericDimmableLightDE);

      default:
        return TextAtom('Entity type is unsupported ${type?.name ?? 'null'}');
    }
  }
}
