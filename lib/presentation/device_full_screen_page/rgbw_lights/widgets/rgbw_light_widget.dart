import 'package:cybear_jinni/application/light_toggle/light_toggle_bloc.dart';
import 'package:cybear_jinni/domain/devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/presentation/device_full_screen_page/rgbw_lights/widgets/light_color_mods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show light toggles in a container with the background color from smart room
/// object
class RgbwLightWidget extends StatelessWidget {
  const RgbwLightWidget(this._deviceEntity);

  final GenericRgbwLightDE _deviceEntity;

  void _onChange(BuildContext context, bool value) {
    context.read<LightToggleBloc>().add(
          LightToggleEvent.changeAction(
            deviceEntity: _deviceEntity,
            changeToState: value,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    final deviceState = _deviceEntity.deviceStateGRPC.getOrCrash();
    final deviceAction = _deviceEntity.lightSwitchState!.getOrCrash();

    bool toggleValue = false;
    Color toggleColor = Colors.blueGrey;

    if (deviceAction == DeviceActions.on.toString()) {
      toggleValue = true;
      if (deviceState == DeviceStateGRPC.ack.toString()) {
        toggleColor = const Color(0xFFFFDF5D);
      }
    } else {
      if (deviceState == DeviceStateGRPC.ack.toString()) {
        toggleColor = Theme.of(context).primaryColorDark;
      }
    }

    return BlocConsumer<LightToggleBloc, LightToggleState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Container(
                        child: Text(
                          _deviceEntity.defaultName.getOrCrash()!,
                          style: const TextStyle(
                            overflow: TextOverflow.clip,
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
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
                          color: Theme.of(context).textTheme.bodyText1!.color,
                        ),
                        onToggle: (bool value) => _onChange(context, value),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              LightColorMods(state: state, deviceEntity: _deviceEntity),
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
                        value: state.brightness,
                        divisions: 100,
                        min: 1,
                        max: 100,
                        onChanged: (brightness) {
                          context.read<LightToggleBloc>().add(
                                LightToggleEvent.changeBrightness(
                                  deviceEntity: _deviceEntity,
                                  brightness: brightness,
                                ),
                              );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 45,
                      child: Text(
                        '${state.brightness.round().toString()}%',
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
