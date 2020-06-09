import 'package:CybearJinni/features/home_page/smart_device_widget.dart';
import 'package:CybearJinni/objects/smart_device/send_to_smart_device.dart';
import 'package:CybearJinni/objects/smart_device/smart_device_object.dart';
import 'package:flutter/material.dart';

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
              height: 100,
            ),
            Text(
              'Device ip: ' + _ip,
              style: TextStyle(color: Colors.black),
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
                      widgetList.add(Column(
                        children: [
                          Text(
                            'Device type: ' +
                                smartDeviceObject.deviceType.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22, color: Colors.black
//                color: Theme.of(context).textTheme.bodyText1.color,
                                ),
                          ),
                          SizedBox(
                            height: 30,
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
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: 170,
                            child: SmartDevicePage(smartDeviceObject),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                        ],
                      ));
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
