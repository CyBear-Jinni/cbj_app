import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_dimmable_light_device/generic_dimmable_light_entity.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class DimmableLightWidget extends StatefulWidget {
  const DimmableLightWidget(this._deviceEntity);

  final GenericDimmableLightDE _deviceEntity;

  @override
  State<DimmableLightWidget> createState() => _DimmableLightWidgetState();
}

class _DimmableLightWidgetState extends State<DimmableLightWidget> {
  double brightness = 100;

  Future<void> _onChange(bool value) async {
    if (value) {
      await IDeviceRepository.instance.turnOnDevices(
        devicesId: [widget._deviceEntity.uniqueId.getOrCrash()],
      );
    } else {
      await IDeviceRepository.instance.turnOffDevices(
        devicesId: [widget._deviceEntity.uniqueId.getOrCrash()],
      );
    }
  }

  Future<void> _changeBrightness(double value) async {
    brightness = value;

    IDeviceRepository.instance.changeBrightnessDevices(
      devicesId: [widget._deviceEntity.uniqueId.getOrCrash()],
      brightnessToChange: value.round(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    final deviceState = widget._deviceEntity.entityStateGRPC.getOrCrash();
    final deviceAction = widget._deviceEntity.lightSwitchState!.getOrCrash();

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

    return ColoredBox(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: TextAtom(
                    widget._deviceEntity.cbjEntityName.getOrCrash()!,
                    style: const TextStyle(
                      overflow: TextOverflow.clip,
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
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
                    activeSwitchBorder: Border.all(),
                    inactiveSwitchBorder: Border.all(),
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
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.solidSun,
                  color: Colors.blueGrey,
                ),
                Expanded(
                  child: Slider(
                    thumbColor: Colors.white,
                    activeColor: Colors.orangeAccent.shade100,
                    inactiveColor: Colors.grey,
                    value: brightness,
                    divisions: 100,
                    min: 1,
                    max: 100,
                    onChanged: _changeBrightness,
                  ),
                ),
                SizedBox(
                  width: 45,
                  child: TextAtom(
                    '${brightness.round()}%',
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
