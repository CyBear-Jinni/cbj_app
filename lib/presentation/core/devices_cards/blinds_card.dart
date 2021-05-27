import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/client/protoc_as_dart/smart_connection.pbgrpc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlindsCard extends StatelessWidget {
  const BlindsCard(this._deviceEntity);

  final DeviceEntity _deviceEntity;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    final deviceState = _deviceEntity.state!.getOrCrash();
    final deviceAction = _deviceEntity.action!.getOrCrash();

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

    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: const Text(
          'Blinds action is not yet supported when adding new blinds'),
    );
    //   BlocConsumer<LightToggleBloc, LightToggleState>(
    //   listener: (context, state) {},
    //   builder: (context, state) {
    //     return Container(
    //       margin: const EdgeInsets.symmetric(vertical: 5),
    //       width: sizeBoxWidth + 15,
    //       child: FlutterSwitch(
    //           width: screenSize.width * 0.2,
    //           height: screenSize.height * 0.05,
    //           toggleSize: screenSize.height * 0.05,
    //           value: toggleValue,
    //           borderRadius: 25.0,
    //           padding: 0.0,
    //           activeToggleColor: const Color(0xFF2F363D),
    //           inactiveToggleColor: Theme.of(context).primaryColor,
    //           activeSwitchBorder: Border.all(
    //             color: (Theme.of(context).textTheme.bodyText1!.color)!,
    //           ),
    //           inactiveSwitchBorder: Border.all(
    //             color: (Theme.of(context).textTheme.bodyText1!.color)!,
    //           ),
    //           activeColor: toggleColor,
    //           inactiveColor: toggleColor,
    //           activeIcon: const Icon(
    //             FontAwesomeIcons.solidLightbulb,
    //             color: Color(0xFFF8E3A1),
    //           ),
    //           inactiveIcon: Icon(
    //             FontAwesomeIcons.lightbulb,
    //             color: (Theme.of(context).textTheme.bodyText1!.color)!,
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
