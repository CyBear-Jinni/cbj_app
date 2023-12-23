import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_dimmable_light_entity/generic_dimmable_light_entity.dart';
import 'package:cybearjinni/domain/device/i_device_repository.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class DimmableLightMolecule extends StatefulWidget {
  const DimmableLightMolecule(this.entity);

  final GenericDimmableLightDE entity;

  @override
  State<DimmableLightMolecule> createState() => _DimmableLightMoleculeState();
}

class _DimmableLightMoleculeState extends State<DimmableLightMolecule> {
  double brightness = 100;

  Future<void> _onChange(bool value) async {
    if (value) {
      await IDeviceRepository.instance.turnOnDevices(
        devicesId: [widget.entity.cbjDeviceVendor.getOrCrash()],
      );
    } else {
      await IDeviceRepository.instance.turnOffDevices(
        devicesId: [widget.entity.cbjDeviceVendor.getOrCrash()],
      );
    }
  }

  Future<void> _changeBrightness(double value) async {
    brightness = value;

    IDeviceRepository.instance.changeBrightnessDevices(
      devicesId: [widget.entity.cbjDeviceVendor.getOrCrash()],
      brightnessToChange: value.round(),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                    widget.entity.cbjEntityName.getOrCrash()!,
                    style: const TextStyle(
                      overflow: TextOverflow.clip,
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                SwitchAtom(
                  variant: SwitchVariant.light,
                  action: widget.entity.lightSwitchState.action,
                  state: widget.entity.entityStateGRPC.state,
                  onToggle: _onChange,
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
