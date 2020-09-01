import 'dart:async';

import 'package:CyBearJinni/objects/smart_device/smart_device_object.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SmartDevicePage extends StatefulWidget {
  final SmartDeviceObject device;

  SmartDevicePage(this.device);

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
    this._device = widget.device;
    getAndUpdateState();

    WidgetsBinding.instance.addObserver(
        new LifecycleEventHandler(resumeCallBack: getAndUpdateState));
  }

  Future<void> getAndUpdateState() async {
    try {
      bool stateValue = await getDeviceState();
      if (mounted) {
        _isLoading = false;
        setState(() {
          _switchState = stateValue;
        });
      }
    } catch (exception) {
      print('Error whan updating state after resume: ' + exception.toString());
    }
  }

  //  Send request to device to retrieve his state on or off
  Future<bool> getDeviceState() async {
    _switchState = await _device.getDeviceStateAsBool();
    return _switchState;
  }

  Future<void> _onChange(bool value) async {
    print('OnChange ' + value.toString());
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
        _isLoading
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: CircularProgressIndicator()),
              )
            : Transform.scale(
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
