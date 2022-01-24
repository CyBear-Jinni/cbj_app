import 'dart:async';

import 'package:cybear_jinni/domain/devices/generic_boiler_device/generic_boiler_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_boiler_device/generic_boiler_value_objects.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/objects/enums.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmartBoilerPage extends StatefulWidget {
  const SmartBoilerPage(this.genericBoilerBoiler);

  final GenericBoilerDE genericBoilerBoiler;

  @override
  State<StatefulWidget> createState() {
    return _SmartBoilerPage();
  }
}

class _SmartBoilerPage extends State<SmartBoilerPage> {
  bool _switchState = false;
  GenericBoilerDE? _boiler;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _boiler = widget.genericBoilerBoiler;
    getAndUpdateState();

    WidgetsBinding.instance!
        .addObserver(LifecycleEventHandler(resumeCallBack: getAndUpdateState));
  }

  Future<void> getAndUpdateState() async {
    try {
      final bool stateValue = await getBoilerAction();
      if (mounted) {
        _isLoading = false;
        setState(() {
          _switchState = stateValue;
        });
      }
    } catch (exception) {
      logger.e('Error when updating state after resume\n$exception');
    }
  }

  //  Send request to boiler to retrieve his state on or off
  Future<bool> getBoilerAction() async {
    return _switchState = EnumHelper.stringToDeviceAction(
          _boiler!.boilerSwitchState!.getOrCrash(),
        ) ==
        DeviceActions.on;
  }

  Future<void> _onChange(bool value) async {
    logger.v('OnChange $value');
    _boiler?.boilerSwitchState = GenericBoilerSwitchState(
      EnumHelper.deviceActionToString(
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
          _boiler!.defaultName.getOrCrash()!, //  Show boiler name
          style: TextStyle(
            fontSize: 19.0,
            color: Theme.of(context).textTheme.bodyText2!.color,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        if (_isLoading)
          const Center(child: CircularProgressIndicator())
        else
          FlutterSwitch(
            width: screenSize.width * 0.2,
            height: screenSize.height * 0.05,
            toggleSize: screenSize.height * 0.05,
            value: _switchState,
            borderRadius: 25.0,
            padding: 0.0,
            activeToggleColor: const Color(0xFF2F363D),
            inactiveToggleColor: Theme.of(context).primaryColor,
            activeSwitchBorder: Border.all(
              color: (Theme.of(context).textTheme.bodyText1!.color)!,
            ),
            inactiveSwitchBorder: Border.all(
              color: (Theme.of(context).textTheme.bodyText1!.color)!,
            ),
            activeColor: const Color(0xFFFFDF5D),
            inactiveColor: Theme.of(context).primaryColorDark,
            activeIcon: const Icon(
              FontAwesomeIcons.temperatureHigh,
              color: Color(0xFFF8E3A1),
            ),
            inactiveIcon: Icon(
              FontAwesomeIcons.temperatureHigh,
              color: Theme.of(context).textTheme.bodyText1!.color,
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
  Future<Null> didChangeAppLifecycleState(AppLifecycleState state) async {
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
