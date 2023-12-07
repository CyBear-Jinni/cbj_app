import 'dart:async';

import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_smart_plug_device/generic_smart_plug_entity.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

/// Show smartPlug toggles in a container with the background color from smart room
/// object
class SmartPlugsWidget extends StatefulWidget {
  const SmartPlugsWidget(this._deviceEntity);

  final GenericSmartPlugDE _deviceEntity;

  @override
  State<SmartPlugsWidget> createState() => _SmartPlugsWidgetState();
}

class _SmartPlugsWidgetState extends State<SmartPlugsWidget> {
  int sendNewColorEachMilliseconds = 200;
  Timer? timeFromLastColorChange;
  HSVColor? lastColoredPicked;

  Future<void> _changeAction(
    bool changeToState,
    DeviceEntityAbstract deviceEntity,
  ) async {
    dartz.Either<DevicesFailure, dartz.Unit> actionResult;

    if (changeToState) {
      actionResult = await IDeviceRepository.instance.turnOnDevices(
        devicesId: [deviceEntity.uniqueId.getOrCrash()],
      );
    } else {
      actionResult = await IDeviceRepository.instance.turnOffDevices(
        devicesId: [deviceEntity.uniqueId.getOrCrash()],
      );

      actionResult.fold((devicesFailure) {}, (_) {});
    }
  }

  /// This function will make sure that the app sends color once each x seconds.
  /// Moving the hand on the color slider sends tons of requests with
  /// different colors which is not efficient and some device can't even handle
  /// so many requests.
  Future<void> changeColorOncePerTimer() async {
    await IDeviceRepository.instance.changeHsvColorDevices(
      devicesId: [widget._deviceEntity.uniqueId.getOrCrash()],
      hsvColorToChange: lastColoredPicked!,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double sizeBoxWidth = screenSize.width * 0.25;

    final deviceState = widget._deviceEntity.entityStateGRPC.getOrCrash();
    final deviceAction = widget._deviceEntity.smartPlugState!.getOrCrash();

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
        activeIcon: Icon(
          MdiIcons.powerSocketAu,
          color: Colors.white,
        ),
        inactiveIcon: Icon(
          MdiIcons.powerSocketAu,
          color: Colors.white70,
        ),
        onToggle: (bool value) => _changeAction(value, widget._deviceEntity),
      ),
    );
  }
}
