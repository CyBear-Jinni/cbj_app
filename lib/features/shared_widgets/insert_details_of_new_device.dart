import 'package:CyBearJinni/features/home_page/smart_device_widget.dart';
import 'package:CyBearJinni/features/home_page/tabs/smart_devices_tab/blinds/smart_blind_widget.dart';
import 'package:CyBearJinni/objects/enums.dart';
import 'package:CyBearJinni/objects/interface_darta/cloud_interface_data.dart';
import 'package:CyBearJinni/objects/smart_device/send_to_smart_device.dart';
import 'package:CyBearJinni/objects/smart_device/smart_device_object.dart';
import 'package:CyBearJinni/objects/smart_device/smart_room_object.dart';
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
            ShowAllDevicesInTheSmartDevice(_ip),
          ],
        ),
      ),
    );
  }
}

class ShowAllDevicesInTheSmartDevice extends StatefulWidget {
  String _ip;

  ShowAllDevicesInTheSmartDevice(this._ip);

  @override
  State<StatefulWidget> createState() {
    return _ShowAllDevicesInTheSmartDevice(_ip);
  }
}

class _ShowAllDevicesInTheSmartDevice
    extends State<ShowAllDevicesInTheSmartDevice> {
  String _ip;
  bool _isLoading = true;
  List<SmartDeviceObject> smartDeviceObjectList;

  _ShowAllDevicesInTheSmartDevice(this._ip) {
    getAllTheDevices();
  }

  void getAllTheDevices() async {
    smartDeviceObjectList = await getAllDevices(_ip);
    _isLoading = false;
    if (mounted) {
      _isLoading = false;
      setState(() {});
    }
  }

  List<Widget> listOfDevicesToShow() {
    List<Widget> widgetList = List<Widget>();
    TextEditingController newDeviceTextFormFieldText;
    for (SmartDeviceObject smartDeviceObject in smartDeviceObjectList) {
      widgetList.add(NewDeviceWidget(smartDeviceObject));
    }
    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading ? CircularProgressIndicator() :
    Expanded(
      child: Column(
        children: [
          Expanded(
              child: ListView(
                children: listOfDevicesToShow(),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                padding: EdgeInsets.all(12),
                color: Colors.redAccent,
                child: Text('Cancel', style: TextStyle(
                    color: Colors.white)),
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      onPressed: () {
                        getAllTheDevices();
                        final List<SmartDeviceObject> room2DevicesList =
                            smartDeviceObjectList;
                        SmartRoomObject newRoom =
                            SmartRoomObject("New devices", room2DevicesList);
                        rooms.add(newRoom);
                        Navigator.pop(context);
                      },
                      padding: EdgeInsets.all(12),
                      color: Colors.lightGreen,
                      child: Text('Add devices',
                          style: TextStyle(color: Colors.white)),
                    ),
            ],),
        ],
      ),
    );
  }
}

class NewDeviceWidget extends StatefulWidget {

  SmartDeviceObject _smartDeviceObject;

  NewDeviceWidget(this._smartDeviceObject);

  @override
  _NewDeviceWidget createState() => _NewDeviceWidget(_smartDeviceObject);
}

class _NewDeviceWidget extends State<NewDeviceWidget> {

  final myController = TextEditingController();
  SmartDeviceObject _smartDeviceObject;

  _NewDeviceWidget(this._smartDeviceObject) {
    myController.text = _smartDeviceObject.name.toString();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  Widget drawSmartWidgetHelper(SmartDeviceObject smartDeviceObject) {
    switch (_smartDeviceObject.deviceType) {
      case DeviceType.Light:
        // TODO: Handle this case.
        break;
      case DeviceType.DynamicLight:
        // TODO: Handle this case.
        break;
      case DeviceType.Blinds:
        return SmartBlindPage(_smartDeviceObject);
        break;
      case DeviceType.Thermostat:
        // TODO: Handle this case.
        break;
      case DeviceType.Fan:
        // TODO: Handle this case.
        break;
      case DeviceType.AirConditioner:
        // TODO: Handle this case.
        break;
      case DeviceType.Camera:
        // TODO: Handle this case.
        break;
      case DeviceType.Fridge:
        // TODO: Handle this case.
        break;
      case DeviceType.Toaster:
        // TODO: Handle this case.
        break;
      case DeviceType.CoffeeMachine:
        // TODO: Handle this case.
        break;
      case DeviceType.SmartTV:
        // TODO: Handle this case.
        break;
      case DeviceType.RCAirplane:
        // TODO: Handle this case.
        break;
      case DeviceType.RCCar:
        // TODO: Handle this case.
        break;
      case DeviceType.Speakers:
        // TODO: Handle this case.
        break;
      case DeviceType.Roomba:
        // TODO: Handle this case.
        break;
      case DeviceType.Irrigation:
        // TODO: Handle this case.
        break;
      case DeviceType.SmartBed:
        // TODO: Handle this case.
        break;
      case DeviceType.AnimalTracker:
        // TODO: Handle this case.
        break;
      case DeviceType.SmartCar:
        // TODO: Handle this case.
        break;
      case DeviceType.SmartPool:
        // TODO: Handle this case.
        break;
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 100),
        padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
        decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
        child: Column(
            children: [
              Row(
                children: [
                  if(_smartDeviceObject.deviceType ==
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
                  if(_smartDeviceObject.deviceType ==
                      DeviceType.Blinds)
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      child:
                      CircleAvatar(
                        child: Icon(
                            FontAwesomeIcons.satelliteDish),
                        radius: 16,
                      ),
                    ),
                  Text(
                    'Device type: ' + EnumHelper.dTToString(
                        _smartDeviceObject.deviceType),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20,
                        color: Colors.white,
                        backgroundColor: Colors.blueGrey
//                color: Theme.of(context).textTheme.bodyText1.color,
                    ),
                  ),
                  (_smartDeviceObject.deviceType == DeviceType.Light) ?
                  Container(
                    width: 100,
                    child: SmartDevicePage(
                        _smartDeviceObject), // The actual render of the device
                  ) : Container(),
                ],
              ),
              drawSmartWidgetHelper(_smartDeviceObject),
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
                controller: myController,
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
                height: 20,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                onPressed: () {
                  updateDeviceName(_smartDeviceObject, myController.text);
                  // TODO: Reload this page again (Navigator.popAndPushNamed(context, 'routeName');)
                  //  to load the correct and updated values from the Smart Device, without it Add Devices will add the last values
                },
                padding: EdgeInsets.all(12),
                color: Colors.blueAccent,
                child: Text('Update', style: TextStyle(
                    color: Colors.white)),
              ),
            ],
          ));
  }
}