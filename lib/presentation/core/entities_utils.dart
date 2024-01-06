import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EntitiesUtils {
  static IconData iconOfDeviceType(EntityTypes deviceType) {
    switch (deviceType) {
      case EntityTypes.blinds:
        return FontAwesomeIcons.alignJustify;
      case EntityTypes.boiler:
        return FontAwesomeIcons.temperatureThreeQuarters;
      case EntityTypes.browserApp:
        // TODO: Handle this case.
        break;
      case EntityTypes.button:
        return Icons.smart_button;
      case EntityTypes.computerApp:
        return Icons.computer;
      case EntityTypes.emptyEntity:
        // TODO: Handle this case.
        break;
      case EntityTypes.hub:
        // TODO: Handle this case.
        break;
      case EntityTypes.light:
      case EntityTypes.dimmableLight:
      case EntityTypes.rgbLights:
      case EntityTypes.rgbcctLights:
      case EntityTypes.rgbwLights:
      case EntityTypes.cctLight:
        return FontAwesomeIcons.lightbulb;
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
      case EntityTypes.routerEntity:
        return Icons.router;
      case EntityTypes.securityCamera:
        return Icons.camera;
      case EntityTypes.smartComputer:
        return Icons.computer;
      case EntityTypes.smartPlug:
        return MdiIcons.powerSocketAu;
      case EntityTypes.smartTV:
        return Icons.tv;
      case EntityTypes.smartTypeNotSupported:
        // TODO: Handle this case.
        break;
      case EntityTypes.switch_:
        return MdiIcons.lightSwitch;
      case EntityTypes.voiceAssistant:
        return MdiIcons.voicemail;
    }
    return Icons.question_mark;
  }
}
