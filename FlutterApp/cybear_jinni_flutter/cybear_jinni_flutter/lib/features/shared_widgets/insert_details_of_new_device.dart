import 'package:CybearJinni/features/home_page/smart_device_widget.dart';
import 'package:CybearJinni/objects/enums.dart';
import 'package:CybearJinni/objects/smart_device/send_to_smart_device.dart';
import 'package:CybearJinni/objects/smart_device/smart_device_object.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InsertDetailsOfNewDevice extends StatelessWidget {
  final String _ip;

  InsertDetailsOfNewDevice(this._ip);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(5.0),
//        decoration: BoxDecoration(
//          gradient: LinearGradient(
//            // Where the linear gradient begins and ends
//            begin: Alignment.topRight,
//            end: Alignment.bottomCenter,
//            // Add one stop for each color. Stops should increase from 0 to 1
//            stops: [0, 0, 0, 1],
//            colors: [
//              Theme.of(context).primaryColor,
//              Theme.of(context).accentColor,
//              Theme.of(context).accentColor,
//              Theme.of(context).primaryColor
//            ],
//          ),
//        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Text(
              'Device ip: ' + _ip,
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            FutureBuilder<List<SmartDeviceObject>>(
                future: getAllDevices(_ip),
                builder:
                    (context, AsyncSnapshot<List<SmartDeviceObject>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.data == null) {
                      return Text('Waiting response from device');
                    }
                    List<Widget> widgetList = List<Widget>();
                    for (SmartDeviceObject smartDeviceObject in snapshot.data) {
                      widgetList.add(Container(
                          margin: const EdgeInsets.only(bottom: 100),
                          padding: const EdgeInsets.fromLTRB(15, 5, 15, 30),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueAccent)
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  if(smartDeviceObject.deviceType ==
                                      DeviceType.Light)
                                    Container(
                                      margin: const EdgeInsets.only(right: 5),
                                      child:
                                      CircleAvatar(
                                        child: Icon(
                                            FontAwesomeIcons.solidLightbulb),
                                        radius: 16,
                                      ),
                                    ),
                                  Text(
                                    'Device type: ' + EnumHelper.dTToString(
                                        smartDeviceObject.deviceType),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 20,
                                        color: Colors.white,
                                        backgroundColor: Colors.blueGrey
//                color: Theme.of(context).textTheme.bodyText1.color,
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    child: SmartDevicePage(smartDeviceObject),
                                  ),
                                ],
                              ),
                              TextFormField(
                                autofocus: false,
                                cursorColor: Colors.black,
                                style: TextStyle(
                                  color: Colors.black,
                                  decorationColor: Colors.black,
                                ),
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'Room name is required';
                                  }
                                  return null;
                                },
//              onSaved: (roomName) => _roomName = roomName,
                                decoration: InputDecoration(
                                    labelText: 'Room name:',
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                      decorationColor: Colors.black,
                                    )),
                              ),
                              TextFormField(
                                initialValue: smartDeviceObject.name.toString(),
                                autofocus: false,
//              onSaved: (deviceName) => _deviceName = deviceName,
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'Device name is required';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  labelText: 'Device name:',
                                ),
                              ),
                            ],
                          )));
                    }
                    return Expanded(
                        child: ListView(
                          children: widgetList,
                        ));
                  }
                  return CircularProgressIndicator();
                }),
          ],
        ),
      ),
    );
  }
}