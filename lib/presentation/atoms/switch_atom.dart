import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SwitchAtom extends StatefulWidget {
  const SwitchAtom({
    required this.variant,
    required this.onToggle,
    required this.action,
    required this.state,
  });

  final SwitchVariant variant;
  final Function(bool) onToggle;
  final EntityActions action;
  final EntityStateGRPC state;

  // (bool value)
  @override
  State<SwitchAtom> createState() => _SwitchAtomState();
}

class _SwitchAtomState extends State<SwitchAtom> {
  @override
  void initState() {
    super.initState();
    toggleValue = widget.action == EntityActions.on;
  }

  bool toggleValue = false;

  Color getToggleColor() {
    if (toggleValue) {
      if (widget.state == EntityStateGRPC.ack) {
        return const Color(0xFFFFDF5D);
      }
    } else {
      if (widget.state == EntityStateGRPC.ack) {
        return Theme.of(context).primaryColorDark;
      }
    }
    return Colors.blueGrey;
  }

  void onToggle(bool value) {
    widget.onToggle(value);
    setState(() {
      toggleValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    IconData activeIcon;
    IconData inactiveIcon;

    switch (widget.variant) {
      case SwitchVariant.light:
        activeIcon = FontAwesomeIcons.solidLightbulb;
        inactiveIcon = FontAwesomeIcons.lightbulb;
      case SwitchVariant.boiler:
        activeIcon = FontAwesomeIcons.temperatureThreeQuarters;
        inactiveIcon = FontAwesomeIcons.temperatureThreeQuarters;
      case SwitchVariant.smartPlug:
        activeIcon = MdiIcons.powerSocketAu;
        inactiveIcon = MdiIcons.powerSocketAu;
      case SwitchVariant.switchVariant:
        activeIcon = MdiIcons.lightSwitch;
        inactiveIcon = MdiIcons.lightSwitch;
    }

    final Color toggleColor = getToggleColor();

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
        inactiveToggleColor: Colors.deepPurple,
        activeSwitchBorder: Border.all(
          color: Theme.of(context).textTheme.bodyLarge!.color!,
        ),
        inactiveSwitchBorder: Border.all(
          color: Theme.of(context).textTheme.bodyLarge!.color!,
        ),
        activeColor: toggleColor,
        inactiveColor: toggleColor,
        activeIcon: Icon(
          activeIcon,
          color: const Color(0xFFF8E3A1),
        ),
        inactiveIcon: Icon(
          inactiveIcon,
          color: Theme.of(context).textTheme.bodyLarge!.color,
        ),
        onToggle: onToggle,
      ),
    );
  }
}

enum SwitchVariant {
  light,
  boiler,
  smartPlug,
  switchVariant,
  ;
}
