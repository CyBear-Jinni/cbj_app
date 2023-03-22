import 'package:cybear_jinni/domain/generic_devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';

import 'package:flutter/material.dart';

class BlindsCard extends StatelessWidget {
  const BlindsCard(this._deviceEntity);

  final GenericLightDE _deviceEntity;

  @override
  Widget build(BuildContext context) {
    final deviceState = _deviceEntity.entityStateGRPC.getOrCrash();
    final deviceAction = _deviceEntity.lightSwitchState!.getOrCrash();

    // bool toggleValue = false;
    // Color toggleColor = Colors.blueGrey;

    if (deviceAction == DeviceActions.on.toString()) {
      // toggleValue = true;
      if (deviceState == DeviceStateGRPC.ack.toString()) {
        // toggleColor = const Color(0xFFFFDF5D);
      }
    } else {
      if (deviceState == DeviceStateGRPC.ack.toString()) {
        // toggleColor = Theme.of(context).primaryColorDark;
      }
    }

    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: const Text(
        'Blinds action is not yet supported when adding new blinds',
      ),
    );
    //   BlocConsumer<LightToggleBloc, LightToggleState>(
    //   listener: (context, state) {},
    //   builder: (context, state) {
    //     return Container(
    //       margin: const EdgeInsets.symmetric(vertical: 5),
    //       width: sizeBoxWidth + 15,
    //       child: FlutterSwitch(
    //           width: screenSize.width * 0.25,
    //           height: screenSize.height * 0.065,
    //           toggleSize: screenSize.height * 0.065,
    //           value: toggleValue,
    //           borderRadius: 25.0,
    //           padding: 0.0,
    //           activeToggleColor: const Color(0xFF2F363D),
    //           inactiveToggleColor: Theme.of(context).primaryColor,
    //           activeSwitchBorder: Border.all(
    //             color: (Theme.of(context).textTheme.bodyLarge!.color)!,
    //           ),
    //           inactiveSwitchBorder: Border.all(
    //             color: (Theme.of(context).textTheme.bodyLarge!.color)!,
    //           ),
    //           activeColor: toggleColor,
    //           inactiveColor: toggleColor,
    //           activeIcon: const Icon(
    //             FontAwesomeIcons.solidLightbulb,
    //             color: Color(0xFFF8E3A1),
    //           ),
    //           inactiveIcon: Icon(
    //             FontAwesomeIcons.lightbulb,
    //             color: (Theme.of(context).textTheme.bodyLarge!.color)!,
    //           ),
    //           onToggle: (bool value) => _onChange(context, value)
    //           // _onChange(context, value),
    //
    //           ),
    //     );
    //   },
    // );
  }
}
