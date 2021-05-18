import 'package:cybear_jinni/application/light_toggle/light_toggle_bloc.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/domain/devices/value_objects.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LightCard extends StatelessWidget {
  const LightCard(this._deviceEntity);

  final DeviceEntity _deviceEntity;

  void _onChange(BuildContext context, bool value) {
    final DeviceEntity tempDeviceEntity = _deviceEntity.copyWith(
      state: DeviceState('set'),
      action: DeviceAction(value.toString()),
    );
    context.read<LightToggleBloc>().add(
          LightToggleEvent.changeAction(tempDeviceEntity, true),
        );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    final deviceState = _deviceEntity.state.getOrCrash();
    final deviceAction = _deviceEntity.action.getOrCrash();

    bool toggleValue = false;
    Color toggleColor = Colors.blueGrey;

    if (deviceAction == 'on') {
      toggleValue = true;
      if (deviceState == 'ack') {
        toggleColor = const Color(0xFFFFDF5D);
      }
    } else {
      if (deviceState == 'ack') {
        toggleColor = Theme.of(context).primaryColorDark;
      }
    }

    return BlocConsumer<LightToggleBloc, LightToggleState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          width: sizeBoxWidth + 15,
          child: FlutterSwitch(
              width: screenSize.width * 0.2,
              height: screenSize.height * 0.05,
              toggleSize: screenSize.height * 0.05,
              value: toggleValue,
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
              activeColor: toggleColor,
              inactiveColor: toggleColor,
              activeIcon: const Icon(
                FontAwesomeIcons.solidLightbulb,
                color: Color(0xFFF8E3A1),
              ),
              inactiveIcon: Icon(
                FontAwesomeIcons.lightbulb,
                color: Theme.of(context).textTheme.bodyText1.color,
              ),
              onToggle: (bool value) => _onChange(context, value)
              // _onChange(context, value),

              ),
        );
      },
    );
  }
}
