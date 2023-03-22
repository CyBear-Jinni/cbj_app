import 'dart:async';

import 'package:cybear_jinni/domain/generic_devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_rgbw_light_device/generic_rgbw_light_value_objects.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';

import 'package:cybear_jinni/infrastructure/objects/enums_cbj.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmartRgbwLightPage extends StatefulWidget {
  const SmartRgbwLightPage(this.genericRgbwLightRgbwLight);

  final GenericRgbwLightDE genericRgbwLightRgbwLight;

  @override
  State<StatefulWidget> createState() {
    return _SmartRgbwLightPage();
  }
}

class _SmartRgbwLightPage extends State<SmartRgbwLightPage> {
  bool _switchState = false;
  GenericRgbwLightDE? _rgbwLight;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _rgbwLight = widget.genericRgbwLightRgbwLight;
    getAndUpdateState();

    WidgetsBinding.instance
        .addObserver(LifecycleEventHandler(resumeCallBack: getAndUpdateState));
  }

  Future<void> getAndUpdateState() async {
    try {
      final bool stateValue = await getRgbwLightAction();
      if (mounted) {
        _isLoading = false;
        setState(() {
          _switchState = stateValue;
        });
      }
    } catch (exception) {
      logger.e('Error when updating state after resume: $exception');
    }
  }

  //  Send request to rgbwLight to retrieve his state on or off
  Future<bool> getRgbwLightAction() async {
    return _switchState = EnumHelperCbj.stringToDeviceAction(
          _rgbwLight!.lightSwitchState!.getOrCrash(),
        ) ==
        DeviceActions.on;
  }

  Future<void> _onChange(bool value) async {
    logger.v('OnChange $value');
    _rgbwLight?.lightSwitchState = GenericRgbwLightSwitchState(
      EnumHelperCbj.deviceActionToString(
        value ? DeviceActions.on : DeviceActions.off,
      ),
    );
    if (mounted) {
      setState(() {
        _switchState = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Text(
          _rgbwLight!.cbjEntityName.getOrCrash()!, //  Show rgbwLight name
          style: TextStyle(
            fontSize: 19.0,
            color: Theme.of(context).textTheme.bodyMedium!.color,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        if (_isLoading)
          const Center(child: CircularProgressIndicator())
        else
          FlutterSwitch(
            width: screenSize.width * 0.25,
            height: screenSize.height * 0.065,
            toggleSize: screenSize.height * 0.065,
            value: _switchState,
            borderRadius: 25.0,
            padding: 0.0,
            activeToggleColor: const Color(0xFF2F363D),
            inactiveToggleColor: Theme.of(context).primaryColor,
            activeSwitchBorder: Border.all(
              color: (Theme.of(context).textTheme.bodyLarge!.color)!,
            ),
            inactiveSwitchBorder: Border.all(
              color: (Theme.of(context).textTheme.bodyLarge!.color)!,
            ),
            activeColor: const Color(0xFFFFDF5D),
            inactiveColor: Theme.of(context).primaryColorDark,
            activeIcon: const Icon(
              FontAwesomeIcons.lightbulb,
              color: Color(0xFFF8E3A1),
            ),
            inactiveIcon: Icon(
              FontAwesomeIcons.lightbulb,
              color: Theme.of(context).textTheme.bodyLarge!.color,
            ),
            onToggle: (bool value) => _onChange(value),
          ),
      ],
    );
  }
}

class LifecycleEventHandler extends WidgetsBindingObserver {
  LifecycleEventHandler({
    this.resumeCallBack,
    this.suspendingCallBack,
  });

  final AsyncCallback? resumeCallBack;
  final AsyncCallback? suspendingCallBack;

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        if (resumeCallBack != null) {
          await resumeCallBack!();
        }
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        if (suspendingCallBack != null) {
          await suspendingCallBack!();
        }
        break;
    }
  }
}
