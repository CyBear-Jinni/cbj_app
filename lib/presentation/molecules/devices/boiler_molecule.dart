import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_boiler_device/generic_boiler_entity.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BoilerMolecule extends StatefulWidget {
  const BoilerMolecule(this.entity);

  final GenericBoilerDE entity;

  @override
  State<BoilerMolecule> createState() => _BoilerMoleculeState();
}

class _BoilerMoleculeState extends State<BoilerMolecule> {
  Future<void> _turnOnAllBoilers(List<String> boilersIdToTurnUp) async {
    FlushbarHelper.createLoading(
      message: 'Turning_On_boiler'.tr(),
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance.turnOnDevices(devicesId: boilersIdToTurnUp);
  }

  Future<void> _turnOffAllBoilers(List<String> boilersIdToTurnOff) async {
    FlushbarHelper.createLoading(
      message: 'Turning_Off_boiler'.tr(),
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(context);

    IDeviceRepository.instance.turnOffDevices(devicesId: boilersIdToTurnOff);
  }

  void _onChange(bool value) {
    if (value) {
      _turnOnAllBoilers([widget.entity.cbjDeviceVendor.getOrCrash()]);
    } else {
      _turnOffAllBoilers([widget.entity.cbjDeviceVendor.getOrCrash()]);
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    final deviceState = widget.entity.entityStateGRPC.getOrCrash();
    final deviceAction = widget.entity.boilerSwitchState!.getOrCrash();

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
          color: Theme.of(context).textTheme.bodyLarge!.color!,
        ),
        inactiveSwitchBorder: Border.all(
          color: Theme.of(context).textTheme.bodyLarge!.color!,
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
        onToggle: (bool value) => _onChange(value),
      ),
    );
  }
}
