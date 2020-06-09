import 'package:CybearJinni/objects/enums.dart';
import 'package:CybearJinni/objects/smart_device/client/protoc_as_dart/smart_connection.pb.dart';
import 'package:CybearJinni/objects/smart_device/send_to_smart_device.dart';
import 'package:CybearJinni/objects/smart_device/smart_device_objcet.dart';
import 'package:CybearJinni/objects/smart_device/smart_room_object.dart';
import 'package:flutter/material.dart';

class InsertDetailsOfNewDevice extends StatelessWidget {
  SmartRoomObject _smartRoomObject;
  String _ip;

  InsertDetailsOfNewDevice(this._ip) {
    List<SmartDeviceObject> smartDevicesList = List<SmartDeviceObject>();
    SmartDeviceObject smartDeviceObject =
        SmartDeviceObject(DeviceType.Light, 'Lights name', '10.0.0.15');
    smartDevicesList.add(smartDeviceObject);
    smartDevicesList.add(smartDeviceObject);
    _smartRoomObject = SmartRoomObject('Temp room', smartDevicesList);
  }

  Future<List<SmartDeviceObject>> ipDeviceList() {
    final List<SmartDeviceObject> room1DevicesList = [
      SmartDeviceObject(DeviceType.Light, 'Ceiling lamp', '10.0.0.23', 'Guy'),
      SmartDeviceObject(DeviceType.Light, 'Bed', '10.0.0.24', 'Guy'),
      SmartDeviceObject(DeviceType.Light, 'Desk', '10.0.0.50', 'Guy')
    ];
    return Future.value(room1DevicesList);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<SmartDeviceObject>>(
        future: ipDeviceList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data == null) {
              return Text('Pleas connect to wifi');
            } else {
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
                      FutureBuilder<List<SmartDevice>>(
                          future: getAllDevices(_ip),
                          builder: (context,
                              AsyncSnapshot<List<SmartDevice>> snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.done) {
                              if (snapshot.data == null) {
                                return Text('Waiting response from device');
                              }
                              for (SmartDevice smartDevice in snapshot.data) {
                                return Column(
                                  children: [
                                    Text(
                                      'Device type: ' +
                                          smartDevice.deviceType.toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 22, color: Colors.black
//                color: Theme.of(context).textTheme.bodyText1.color,
                                          ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
//            Container(
//              width: 170,
//              child: SmartDevicePage(rooms[0].getLights()[0]),
//            ),
                                    SizedBox(
                                      height: 100,
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
                                      initialValue: smartDevice.name.toString(),
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
//                              SmartDevicePage(_smartRoomObject.getLights()[0]),
                                  ],
                                );
                              }
                            } else {
                              return CircularProgressIndicator();
                            }
                          }),
                    ],
                  ),
                ),
              );
            }
          } else {
            return Text('Can\'t find device');
          }
        });
  }
}
