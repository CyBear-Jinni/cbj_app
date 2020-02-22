import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smart_home_flutter/objects/smart_device/smart_device_objcet.dart';

class SmartDevicePage extends StatefulWidget {
  final SmartDeviceObject device;


  SmartDevicePage(this.device);

  @override
  State<StatefulWidget> createState() {
    return _SmartDevicePage();
  }
}

class _SmartDevicePage extends State<SmartDevicePage> {
  bool _isLoading = true; //  state is loading
  bool _switchState = false;
  SmartDeviceObject _device;


  @override
  void initState() {
    super.initState();
    this._device = widget.device;
    getDeviceState();
  }

  //  Send request to device to retrieve his state on or off
  Future getDeviceState() async {
    bool deviceState = await _device.getDeviceState();
    print('This is device state: ' + deviceState.toString());
    _onChange(deviceState);
    setState(() {
      _switchState = deviceState;
      _isLoading = false;
    });
  }


  void _onChange(bool value) {
    print('OnChange ' + value.toString());
    _device.setLightState(value);
    setState(() {
      _switchState = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          _device.name, //  Show device name
          style: TextStyle(
            fontSize: 20.0,
            color: Theme
                .of(context)
                .textTheme
                .body2
                .color,
          ),
        ),
        _isLoading
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : Transform.scale(
                scale: 1.5,
                child: Switch(
                  activeColor: Colors.yellow,
                  inactiveThumbColor: Colors.black87,
                  value: _switchState,
                  onChanged: (bool value) => _onChange(value),
                ),
              ),
      ],
    );
  }
}
