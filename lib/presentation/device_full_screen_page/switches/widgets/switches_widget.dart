import 'package:cybear_jinni/application/switch_toggle/switch_toggle_bloc.dart';
import 'package:cybear_jinni/domain/devices/generic_switch_device/generic_switch_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show switch toggles in a container with the background color from smart room
/// object
class SwitchWidget extends StatelessWidget {
  const SwitchWidget(this._deviceEntity);

  final GenericSwitchDE? _deviceEntity;

  void _onChange(BuildContext context, bool value) {
    context.read<SwitchToggleBloc>().add(
          SwitchToggleEvent.changeAction(_deviceEntity!, value),
        );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    final deviceState = _deviceEntity!.deviceStateGRPC.getOrCrash();
    final deviceAction = _deviceEntity!.switchState!.getOrCrash();

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

    return BlocConsumer<SwitchToggleBloc, SwitchToggleState>(
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
            inactiveToggleColor: Colors.deepPurple,
            activeSwitchBorder: Border.all(
              color: (Theme.of(context).textTheme.bodyText1!.color)!,
            ),
            inactiveSwitchBorder: Border.all(
              color: (Theme.of(context).textTheme.bodyText1!.color)!,
            ),
            activeColor: toggleColor,
            inactiveColor: toggleColor,
            activeIcon: const FaIcon(
              FontAwesomeIcons.flickr,
              color: Color(0xFFF8E3A1),
            ),
            inactiveIcon: FaIcon(
              FontAwesomeIcons.flickr,
              color: Theme.of(context).textTheme.bodyText1!.color,
            ),
            onToggle: (bool value) => _onChange(context, value)
            // _onChange(context, value),

            ,
          ),
        );
      },
    );
  }
}
