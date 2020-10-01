import 'dart:async';

import 'package:CyBearJinni/objects/smart_device/smart_blinds_object.dart';
import 'package:CyBearJinni/objects/smart_device/smart_device_object.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    bool deviceState = await _device.getDeviceStateAsBool();
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
            color: Theme.of(context).textTheme.bodyText2.color,
          ),
        ),
        SizedBox(
          height: 20,
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
                  SizedBox(
                    width: 10,
                  ),
                  FlatButton(
                      color: Colors.brown,
                      child: Tab(
                        icon: Icon(FontAwesomeIcons.arrowDown,
                            color: Theme.of(context).textTheme.bodyText1.color),
                        child: Text(
                          "Down",
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1.color,
                              fontSize: 16),
                        ),
                      ),
                      onPressed: () => _smartBlindsObject.blindsDown()),
                  SizedBox(
                    width: 10,
                  ),
                  FlatButton(
                      color: Colors.grey,
                      child: Tab(
                        icon: Icon(FontAwesomeIcons.solidHandPaper,
                            color: Theme.of(context).textTheme.bodyText1.color),
                        child: Text(
                          "Stop",
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1.color,
                              fontSize: 16),
                        ),
                      ),
                      onPressed: () => _smartBlindsObject.blindsStop()),
                  SizedBox(
                    width: 10,
                  ),
                  FlatButton(
                      color: Colors.amber,
                      child: Tab(
                        icon: Icon(FontAwesomeIcons.arrowUp,
                            color: Theme.of(context).textTheme.bodyText1.color),
                        child: Text(
                          "Up",
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1.color,
                              fontSize: 16),
                        ),
                      ),
                      onPressed: () => _smartBlindsObject.blindsUp()),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
