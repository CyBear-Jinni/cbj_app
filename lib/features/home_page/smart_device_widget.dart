import 'dart:async';

import 'package:CyBearJinni/objects/smart_device/smart_device_object.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SmartDevicePage extends StatefulWidget {
  final SmartDeviceObject device;

  const SmartDevicePage(this.device);

  @override
  State<StatefulWidget> createState() {
    return _SmartDevicePage();
  }
}

class _SmartDevicePage extends State<SmartDevicePage> {
  bool _switchState = false;
  SmartDeviceObject _device;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _device = widget.device;
    getAndUpdateState();

    WidgetsBinding.instance
        .addObserver(LifecycleEventHandler(resumeCallBack: getAndUpdateState));
  }

  Future<void> getAndUpdateState() async {
    try {
      final bool stateValue = await getDeviceState();
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

  //  Send request to device to retrieve his state on or off
  Future<bool> getDeviceState() async {
    return _switchState = await _device.getDeviceStateAsBool();
  }

  Future<void> _onChange(bool value) async {
    print('OnChange $value');
    _device.setLightState(value);
    if (mounted) {
      setState(() {
        _switchState = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          _device.name, //  Show device name
          style: TextStyle(
            fontSize: 20.0,
            color: Theme.of(context).textTheme.bodyText2.color,
          ),
        ),
        if (_isLoading)
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(child: CircularProgressIndicator()),
          )
        else
          Transform.scale(
            scale: 1.5,
            child: Switch(
              activeColor: Colors.yellow,
              inactiveThumbColor: Colors.black87,
              value: _switchState,
              onChanged: (bool value) => _onChange(value),
            ),
          )
      ],
    );
  }
}

class LifecycleEventHandler extends WidgetsBindingObserver {
  final AsyncCallback resumeCallBack;
  final AsyncCallback suspendingCallBack;

  LifecycleEventHandler({
    this.resumeCallBack,
    this.suspendingCallBack,
  });

  @override
  Future<Null> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        if (resumeCallBack != null) {
          await resumeCallBack();
        }
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        if (suspendingCallBack != null) {
          await suspendingCallBack();
        }
        break;
    }
  }
}
