import 'package:cybear_jinni/application/light_toggle/light_toggle_bloc.dart';
import 'package:cybear_jinni/domain/devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider/src/provider.dart';

class LightColorMods extends StatefulWidget {
  LightColorMods({
    required this.state,
    required this.deviceEntity,
  });

  final LightToggleState state;
  final GenericRgbwLightDE deviceEntity;

  @override
  State<StatefulWidget> createState() {
    return _LightColorMods();
  }
}

class _LightColorMods extends State<LightColorMods> {
  late Widget colorModeWidget;
  int colorModFocus = 0;

  late LightToggleState _state;
  late GenericRgbwLightDE _deviceEntity;

  @override
  void initState() {
    super.initState();

    context.read<LightToggleBloc>().add(
          LightToggleEvent.initialized(
            rgbwLightDe: widget.deviceEntity,
          ),
        );
  }

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
        value: _state.colorTemperature.toDouble(),
        min: 900,
        max: 10000,
        onChanged: (double newRating) {
          context.read<LightToggleBloc>().add(
                LightToggleEvent.changeColorTemperature(
                  deviceEntity: _deviceEntity,
                  newColorTemperature: newRating.toInt(),
                ),
              );
        },
      ),
    );
  }

  Widget getHsvColorModeWidget() {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ColorPickerArea(
        _state.hsvColor,
        (HSVColor color) {
          context.read<LightToggleBloc>().add(
                LightToggleEvent.changeHsvColor(
                  deviceEntity: _deviceEntity,
                  newHsvColor: color,
                ),
              );
        },
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
                child: Text(
                  'White',
                  style: TextStyle(
                    color: (colorModFocus == 0) ? Colors.red : Colors.grey,
                    fontSize: 18,
                  ),
                ).tr(),
                onPressed: () {
                  _showWhiteMode();
                },
              ),
              TextButton(
                child: Text(
                  'Color',
                  style: TextStyle(
                    color: (colorModFocus == 1) ? Colors.red : Colors.grey,
                    fontSize: 18,
                  ),
                ).tr(),
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
    _state = widget.state;
    _deviceEntity = widget.deviceEntity;
    if (colorModFocus == 0) {
      colorModeWidget = getWhiteModeWidget();
    } else {
      colorModeWidget = getHsvColorModeWidget();
    }

    return lightModBarFocus();
  }
}
