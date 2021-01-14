import 'dart:async';

import 'package:cybear_jinni/objects/smart_device/smart_blinds_object.dart';
import 'package:cybear_jinni/objects/smart_device/smart_device_object.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmartBlindPage extends StatefulWidget {
  SmartBlindPage(this.device) {
    smartBlindsObject = device as SmartBlindsObject;
  }

  final SmartDeviceObject device;
  SmartBlindsObject smartBlindsObject;

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
    _device = widget.device;
    _smartBlindsObject = widget.smartBlindsObject;
    getDeviceState();
  }

  //  Send request to device to retrieve his state on or off
  Future getDeviceState() async {
    final bool deviceState = await _device.getDeviceStateAsBool();
    print('This is device state: $deviceState');
    _onChange(deviceState);
    setState(() {
      _switchState = deviceState;
      _isLoading = false;
    });
  }

  void _onChange(bool value) {
    print('OnChange $value');
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
        const SizedBox(
          height: 20,
        ),
        // false
        //     ? Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Center(
        //           child: CircularProgressIndicator(),
        //         ),
        //       ) :
        Row(
          children: <Widget>[
            const SizedBox(
              width: 10,
            ),
            FlatButton(
              color: Colors.brown,
              onPressed: () => _smartBlindsObject.blindsDown(),
              child: Tab(
                icon: FaIcon(FontAwesomeIcons.arrowDown,
                    color: Theme.of(context).textTheme.bodyText1.color),
                child: Text(
                  'Down',
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color,
                      fontSize: 16),
                ).tr(),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            FlatButton(
              color: Colors.grey,
              onPressed: () => _smartBlindsObject.blindsStop(),
              child: Tab(
                icon: FaIcon(FontAwesomeIcons.solidHandPaper,
                    color: Theme.of(context).textTheme.bodyText1.color),
                child: Text(
                  'Stop',
                  style: TextStyle(
                      color: Theme
                          .of(context)
                          .textTheme
                          .bodyText1
                          .color,
                      fontSize: 16),
                ).tr(),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            FlatButton(
              color: Colors.amber,
              onPressed: () => _smartBlindsObject.blindsUp(),
              child: Tab(
                icon: FaIcon(FontAwesomeIcons.arrowUp,
                    color: Theme.of(context).textTheme.bodyText1.color),
                child: Text(
                  'Up',
                  style: TextStyle(
                      color: Theme
                          .of(context)
                          .textTheme
                          .bodyText1
                          .color,
                      fontSize: 16),
                ).tr(),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
