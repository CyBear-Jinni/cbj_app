import 'dart:async';

import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_switch_device/generic_switch_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_switch_device/generic_switch_value_objects.dart';
import 'package:cybear_jinni/infrastructure/objects/enums_cbj.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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

    WidgetsBinding.instance
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
      logger.e('Error when updating state after resume\n$exception');
    }
  }

  //  Send request to switch to retrieve his state on or off
  Future<bool> getSwitchAction() async {
    return _switchState = EnumHelperCbj.stringToDeviceAction(
          _switch!.switchState!.getOrCrash(),
        ) ==
        EntityActions.on;
  }

  Future<void> _onChange(bool value) async {
    logger.t('OnChange $value');
    _switch?.switchState = GenericSwitchSwitchState(
      EnumHelperCbj.deviceActionToString(
        value ? EntityActions.on : EntityActions.off,
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
        TextAtom(
          _switch!.cbjEntityName.getOrCrash()!, //  Show switch name
          style: TextStyle(
            fontSize: 19.0,
            color: Theme.of(context).textTheme.bodyMedium!.color,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        if (_isLoading)
          const Center(child: CircularProgressIndicatorAtom())
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
              color: Theme.of(context).textTheme.bodyLarge!.color!,
            ),
            inactiveSwitchBorder: Border.all(
              color: Theme.of(context).textTheme.bodyLarge!.color!,
            ),
            activeColor: const Color(0xFFFFDF5D),
            inactiveColor: Theme.of(context).primaryColorDark,
            activeIcon: Icon(
              MdiIcons.lightSwitch,
              color: const Color(0xFFF8E3A1),
            ),
            inactiveIcon: Icon(
              MdiIcons.lightSwitch,
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
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        if (suspendingCallBack != null) {
          await suspendingCallBack!();
        }
      case AppLifecycleState.hidden:
        break;
    }
  }
}
