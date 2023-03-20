import 'package:cybear_jinni/application/smart_plug_toggle/smart_plug_toggle_bloc.dart';
import 'package:cybear_jinni/domain/devices/generic_smart_plug_device/generic_smart_plug_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

/// Show smartPlug toggles in a container with the background color from smart room
/// object
class SmartPlugWidget extends StatelessWidget {
  const SmartPlugWidget(this._deviceEntity);

  final GenericSmartPlugDE? _deviceEntity;

  void _onChange(BuildContext context, bool value) {
    context.read<SmartPlugToggleBloc>().add(
          SmartPlugToggleEvent.changeAction(_deviceEntity!, value),
        );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    final deviceState = _deviceEntity!.entityStateGRPC.getOrCrash();
    final deviceAction = _deviceEntity!.smartPlugState!.getOrCrash();

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

    return BlocConsumer<SmartPlugToggleBloc, SmartPlugToggleState>(
      listener: (context, state) {},
      builder: (context, state) {
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
              color: (Theme.of(context).textTheme.bodyLarge!.color)!,
            ),
            inactiveSwitchBorder: Border.all(
              color: (Theme.of(context).textTheme.bodyLarge!.color)!,
            ),
            activeColor: toggleColor,
            inactiveColor: toggleColor,
            activeIcon: const Icon(
              MdiIcons.powerSocketAu,
              color: Colors.white,
            ),
            inactiveIcon: const Icon(
              MdiIcons.powerSocketAu,
              color: Colors.white70,
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
