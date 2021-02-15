import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class LightWidget extends StatelessWidget {
  const LightWidget(this._deviceEntity);

  final DeviceEntity _deviceEntity;

  void _onChange(bool value) {}

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: sizeBoxWidth + 15,
      child: FlutterSwitch(
        width: screenSize.width * 0.2,
        height: screenSize.height * 0.05,
        toggleSize: screenSize.height * 0.05,
        value: true,
        borderRadius: 25.0,
        padding: 0.0,
        activeToggleColor: const Color(0xFF2F363D),
        inactiveToggleColor: Theme.of(context).primaryColor,
        activeSwitchBorder: Border.all(
          color: Theme.of(context).textTheme.bodyText1.color,
        ),
        inactiveSwitchBorder: Border.all(
          color: Theme.of(context).textTheme.bodyText1.color,
        ),
        activeColor: const Color(0xFFFFDF5D),
        inactiveColor: Theme.of(context).primaryColorDark,
        activeIcon: const Icon(
          FontAwesomeIcons.solidLightbulb,
          color: Color(0xFFF8E3A1),
        ),
        inactiveIcon: Icon(
          FontAwesomeIcons.lightbulb,
          color: Theme.of(context).textTheme.bodyText1.color,
        ),
        onToggle: (bool value) => _onChange(value),
      ),
    );
  }
}
