import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EntitiesUtils {
  static IconData iconOfDeviceType(EntityTypes deviceType) {
    switch (deviceType) {
      case EntityTypes.AirConditioner:
        // TODO: Handle this case.
        break;
      case EntityTypes.babyMonitor:
        // TODO: Handle this case.
        break;
      case EntityTypes.bed:
        return Icons.bed;
      case EntityTypes.blinds:
        return FontAwesomeIcons.alignJustify;
      case EntityTypes.boiler:
        return FontAwesomeIcons.temperatureThreeQuarters;
      case EntityTypes.browserApp:
        // TODO: Handle this case.
        break;
      case EntityTypes.button:
        return Icons.smart_button;
      case EntityTypes.buttonWithLight:
        // TODO: Handle this case.
        break;
      case EntityTypes.coffeeMachine:
        // TODO: Handle this case.
        break;
      case EntityTypes.computerApp:
        return Icons.computer;
      case EntityTypes.dishwasher:
        // TODO: Handle this case.
        break;
      case EntityTypes.emptyEntity:
        // TODO: Handle this case.
        break;
      case EntityTypes.hub:
        // TODO: Handle this case.
        break;
      case EntityTypes.humiditySensor:
        // TODO: Handle this case.
        break;
      case EntityTypes.kettle:
        // TODO: Handle this case.
        break;
      case EntityTypes.lightSensor:
        return Icons.sensors;
      case EntityTypes.light:
      case EntityTypes.dimmableLight:
      case EntityTypes.rgbLights:
      case EntityTypes.rgbcctLights:
      case EntityTypes.rgbwLights:
      case EntityTypes.cctLight:
        return FontAwesomeIcons.lightbulb;
      case EntityTypes.microphone:
        return Icons.mic;
      case EntityTypes.motionSensor:
        // TODO: Handle this case.
        break;
      case EntityTypes.oven:
        // TODO: Handle this case.
        break;
      case EntityTypes.oxygenSensor:
        return Icons.sensors;
      case EntityTypes.phoneApp:
        return Icons.phone;
      case EntityTypes.pingEntity:
        // TODO: Handle this case.
        break;
      case EntityTypes.playerEntity:
        // TODO: Handle this case.
        break;
      case EntityTypes.printer:
      case EntityTypes.scanner:
      case EntityTypes.printerWithScanner:
        return Icons.print;
      case EntityTypes.refrigerator:
        // TODO: Handle this case.
        break;
      case EntityTypes.routerEntity:
        return Icons.router;
      case EntityTypes.securityCamera:
        return Icons.camera;
      case EntityTypes.smartComputer:
        return Icons.computer;
      case EntityTypes.smartPlug:
        return MdiIcons.powerSocketAu;
      case EntityTypes.smartSpeakers:
        return Icons.speaker;
      case EntityTypes.smartTV:
        return Icons.tv;
      case EntityTypes.smartTypeNotSupported:
        // TODO: Handle this case.
        break;
      case EntityTypes.smartWatch:
        return Icons.watch;
      case EntityTypes.smartWaterBottle:
        // TODO: Handle this case.
        break;
      case EntityTypes.smokeDetector:
      case EntityTypes.smokeSensor:
      case EntityTypes.soundSensor:
        return Icons.sensors;
      case EntityTypes.switch_:
        return MdiIcons.lightSwitch;
      case EntityTypes.teapot:
        // TODO: Handle this case.
        break;
      case EntityTypes.temperatureSensor:
        return MdiIcons.temperatureCelsius;
      case EntityTypes.toaster:
        return MdiIcons.toaster;
      case EntityTypes.vacuumCleaner:
        return MdiIcons.vacuum;
      case EntityTypes.voiceAssistant:
        return MdiIcons.voicemail;
      case EntityTypes.washingMachine:
        return MdiIcons.washingMachine;
    }
    return Icons.question_mark;
  }
}
