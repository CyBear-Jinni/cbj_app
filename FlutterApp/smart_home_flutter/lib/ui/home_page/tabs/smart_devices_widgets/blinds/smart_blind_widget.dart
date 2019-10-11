import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smart_home_flutter/objects/smart_device/smart_blinds_object.dart';
import 'package:smart_home_flutter/objects/smart_device/smart_device_objcet.dart';

class SmartBlindPage extends StatefulWidget {
  final SmartDeviceObject device;
  SmartBlindsObject smartBlindsObject;

  SmartBlindPage(this.device) {
    smartBlindsObject = device as SmartBlindsObject;
  }

  @override
  State<StatefulWidget> createState() {
    return _SmartBlindPage();
  }
}

class _SmartBlindPage extends State<SmartBlindPage> {
  bool _isLoading = true; //  state is loading
  bool _switchState = false;
  SmartDeviceObject _device;
  SmartBlindsObject _smartBlindsObject;

  @override
  void initState() {
    super.initState();
    this._device = widget.device;
    this._smartBlindsObject = widget.smartBlindsObject;
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
            color: Theme.of(context).textTheme.body2.color,
          ),
        ),
        false
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : Row(
                children: <Widget>[
                  FlatButton(
                      color: Colors.brown,
                      child: Text("Down"),
                      onPressed: () => _smartBlindsObject.blindsDown()),
                  FlatButton(
                      color: Colors.grey,
                      child: Text("Stop"),
                      onPressed: () => _smartBlindsObject.blindsStop()),
                  FlatButton(
                      color: Colors.amber,
                      child: Text("Up"),
                      onPressed: () => _smartBlindsObject.blindsUp()),
                ],
              ),
      ],
    );
  }
}
