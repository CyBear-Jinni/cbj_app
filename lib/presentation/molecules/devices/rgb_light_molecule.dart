import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class RgbwLightMolecule extends StatefulWidget {
  const RgbwLightMolecule(this._deviceEntity);

  final GenericRgbwLightDE _deviceEntity;

  @override
  State<RgbwLightMolecule> createState() => _RgbwLightMoleculeState();
}

class _RgbwLightMoleculeState extends State<RgbwLightMolecule> {
  int colorTemperature = 4500;
  HSVColor hsvColor = HSVColor.fromColor(Colors.white);
  double brightness = 100;

  @override
  void initState() {
    super.initState();
    _initialized();
  }

  Future<void> _initialized() async {
    final GenericRgbwLightDE rgbwLightDe = widget._deviceEntity;

    int lightColorTemperature =
        int.parse(rgbwLightDe.lightColorTemperature.getOrCrash());

    if (lightColorTemperature > 10000) {
      lightColorTemperature = 10000;
    }

    double lightBrightness =
        double.parse(rgbwLightDe.lightBrightness.getOrCrash());

    if (lightBrightness > 100) {
      lightBrightness = 100;
    }

    setState(() {
      colorTemperature = lightColorTemperature;
      brightness = lightBrightness;
    });
  }

  Future<void> _changeState(bool changeToState) async {
    if (changeToState) {
      await IDeviceRepository.instance.turnOnDevices(
        devicesId: [widget._deviceEntity.cbjDeviceVendor.getOrCrash()],
      );
    } else {
      await IDeviceRepository.instance.turnOffDevices(
        devicesId: [widget._deviceEntity.cbjDeviceVendor.getOrCrash()],
      );
    }
  }

  Future<void> _changeBrightness(double value) async {
    brightness = value;

    IDeviceRepository.instance.changeBrightnessDevices(
      devicesId: [widget._deviceEntity.cbjDeviceVendor.getOrCrash()],
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
                    onToggle: _changeState,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          LightColorMods(deviceEntity: widget._deviceEntity),
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

class LightColorMods extends StatefulWidget {
  const LightColorMods({
    required this.deviceEntity,
    this.brightness = 100,
    this.colorTemperature = 4500,
    this.hsvColor,
  });

  final GenericRgbwLightDE deviceEntity;
  final int colorTemperature;
  final HSVColor? hsvColor;
  final double brightness;

  @override
  State<StatefulWidget> createState() {
    return _LightColorMods();
  }
}

class _LightColorMods extends State<LightColorMods> {
  late int colorTemperature;
  late HSVColor hsvColor;
  late double brightness;

  @override
  void initState() {
    super.initState();
    hsvColor = widget.hsvColor ?? HSVColor.fromColor(Colors.white);
    colorTemperature = widget.colorTemperature;
    brightness = widget.brightness;
    _initialized();
  }

  Future<void> _initialized() async {
    final GenericRgbwLightDE rgbwLightDe = widget.deviceEntity;

    int lightColorTemperature =
        int.parse(rgbwLightDe.lightColorTemperature.getOrCrash());

    if (lightColorTemperature > 10000) {
      lightColorTemperature = 10000;
    }

    double lightBrightness =
        double.parse(rgbwLightDe.lightBrightness.getOrCrash());

    if (lightBrightness > 100) {
      lightBrightness = 100;
    }

    setState(() {
      colorTemperature = lightColorTemperature;
      brightness = lightBrightness;
    });
  }

  Future<void> _changeColorTemperature(int newColorTemperature) async {
    setState(() {
      colorTemperature = newColorTemperature;
    });
    IDeviceRepository.instance.changeColorTemperatureDevices(
      devicesId: [widget.deviceEntity.cbjDeviceVendor.getOrCrash()],
      colorTemperatureToChange: newColorTemperature,
    );
  }

  Future<void> _changeHsvColor(HSVColor newHsvColor) async {
    hsvColor = newHsvColor;
    IDeviceRepository.instance.changeHsvColorDevices(
      devicesId: [widget.deviceEntity.cbjDeviceVendor.getOrCrash()],
      hsvColorToChange: newHsvColor,
    );
  }

  late Widget colorModeWidget;
  int colorModFocus = 0;

  Widget getWhiteModeWidget() {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        // Box decoration takes a gradient
        gradient: LinearGradient(
          stops: const [0.1, 0.5, 0.9],
          colors: [
            Colors.orangeAccent[200]!,
            Colors.white,
            Colors.lightBlue[200]!,
          ],
        ),
      ),
      child: Slider(
        activeColor: Colors.black.withOpacity(0.8),
        value: colorTemperature.toDouble(),
        min: 900,
        max: 10000,
        onChanged: (double newRating) {
          _changeColorTemperature(newRating.toInt());
        },
      ),
    );
  }

  Widget getHsvColorModeWidget() {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ColorPickerArea(
        hsvColor,
        _changeHsvColor,
        PaletteType.hsvWithValue,
      ),
    );
  }

  Future<void> _showWhiteMode() async {
    setState(() {
      colorModFocus = 0;
      colorModeWidget = getWhiteModeWidget();
    });
  }

  Future<void> _showColorMode() async {
    setState(() {
      colorModFocus = 1;
      colorModeWidget = getHsvColorModeWidget();
    });
  }

  Widget lightModBarFocus() {
    return Column(
      children: [
        colorModeWidget,
        Container(
          color: Colors.white,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                child: TextAtom(
                  'White',
                  style: TextStyle(
                    color: (colorModFocus == 0) ? Colors.red : Colors.grey,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  _showWhiteMode();
                },
              ),
              TextButton(
                child: TextAtom(
                  'Color',
                  style: TextStyle(
                    color: (colorModFocus == 1) ? Colors.red : Colors.grey,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  _showColorMode();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    if (colorModFocus == 0) {
      colorModeWidget = getWhiteModeWidget();
    } else {
      colorModeWidget = getHsvColorModeWidget();
    }

    return lightModBarFocus();
  }
}
