import 'dart:async';

import 'package:cybear_jinni/domain/devices/generic_switch_device/generic_switch_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_switch_device/generic_switch_value_objects.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/objects/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmartSwitchPage extends StatefulWidget {
  const SmartSwitchPage(this.genericSwitchSwitch);

  final GenericSwitchDE genericSwitchSwitch;

  @override
  State<StatefulWidget> createState() {
    return _SmartSwitchPage();
  }
}

class _SmartSwitchPage extends State<SmartSwitchPage> {
  bool _switchState = false;
  GenericSwitchDE? _switch;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _switch = widget.genericSwitchSwitch;
    getAndUpdateState();

    WidgetsBinding.instance!
        .addObserver(LifecycleEventHandler(resumeCallBack: getAndUpdateState));
  }

  Future<void> getAndUpdateState() async {
    try {
      final bool stateValue = await getSwitchAction();
      if (mounted) {
        _isLoading = false;
        setState(() {
          _switchState = stateValue;
        });
      }
    } catch (exception) {
      print('Error when updating state after resume: $exception');
    }
  }

  //  Send request to switch to retrieve his state on or off
  Future<bool> getSwitchAction() async {
    return _switchState = EnumHelper.stringToDeviceAction(
          await _switch!.switchState!.getOrCrash(),
        ) ==
        DeviceActions.on;
  }

  Future<void> _onChange(bool value) async {
    print('OnChange $value');
    _switch
      ?..switchState = GenericSwitchSwitchState(
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
          _switch!.defaultName.getOrCrash()!, //  Show switch name
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
            activeIcon: const FaIcon(
              FontAwesomeIcons.flickr,
              color: Color(0xFFF8E3A1),
            ),
            inactiveIcon: FaIcon(
              FontAwesomeIcons.flickr,
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
