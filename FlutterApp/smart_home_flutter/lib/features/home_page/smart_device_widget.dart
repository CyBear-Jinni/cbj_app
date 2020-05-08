import 'dart:async';

import 'package:flutter/cupertino.dart';
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
  bool _switchState = false;
  Future<bool> _switchStateF;
  SmartDeviceObject _device;


  @override
  void initState() {
    super.initState();
    this._device = widget.device;
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
            color: Theme
                .of(context)
                .textTheme
                .bodyText2
                .color,
          ),
        ),
        FutureBuilder<bool>(
          future: getDeviceState(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Transform.scale(
                scale: 1.5,
                child: Switch(
                  activeColor: Colors.yellow,
                  inactiveThumbColor: Colors.black87,
                  value: _switchState,
                  onChanged: (bool value) => _onChange(value),
                ),
              );
            }
            else {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: CircularProgressIndicator(
                    )
                ),
              );
            }
          },
        )
      ],
    );
  }
}