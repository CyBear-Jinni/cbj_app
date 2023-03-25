import 'package:cybear_jinni/application/boilers/boilers_actor/boilers_actor_bloc.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_boiler_device/generic_boiler_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Show boiler toggles in a container with the background color from smart room
/// object
class BoilersWidget extends StatelessWidget {
  const BoilersWidget(this._deviceEntity);

  final GenericBoilerDE _deviceEntity;

  void _onChange(BuildContext context, bool value) {
    if (value) {
      context.read<BoilersActorBloc>().add(
            BoilersActorEvent.turnOnAllBoilers(
              [_deviceEntity.uniqueId.getOrCrash()],
              context,
            ),
          );
    } else {
      context.read<BoilersActorBloc>().add(
            BoilersActorEvent.turnOffAllBoilers(
              [_deviceEntity.uniqueId.getOrCrash()],
              context,
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    final deviceState = _deviceEntity.entityStateGRPC.getOrCrash();
    final deviceAction = _deviceEntity.boilerSwitchState!.getOrCrash();

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

    return BlocConsumer<BoilersActorBloc, BoilersActorState>(
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
              FontAwesomeIcons.temperatureThreeQuarters,
              color: Color(0xFFF8E3A1),
            ),
            inactiveIcon: Icon(
              FontAwesomeIcons.temperatureThreeQuarters,
              color: Theme.of(context).textTheme.bodyLarge!.color,
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
