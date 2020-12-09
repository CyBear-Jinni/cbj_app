import 'package:cybear_jinni/features/home_page/smart_device_widget.dart';
import 'package:cybear_jinni/features/home_page/tabs/smart_devices_tab/blinds/smart_blind_widget.dart';
import 'package:cybear_jinni/features/shared_widgets/insert_wifi_credential_popup.dart';
import 'package:cybear_jinni/objects/enums.dart';
import 'package:cybear_jinni/objects/interface_darta/cloud_interface_data.dart';
import 'package:cybear_jinni/objects/smart_device/send_to_smart_device.dart';
import 'package:cybear_jinni/objects/smart_device/smart_device_object.dart';
import 'package:cybear_jinni/objects/smart_device/smart_room_object.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InsertDetailsOfNewDevice extends StatelessWidget {
  const InsertDetailsOfNewDevice(this._ip, this.gradientColors);

  final String _ip;
  final List<Color> gradientColors;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(5.0),
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
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Device_ip:_',
              style: TextStyle(color: Colors.black),
            ).tr(args: <String>[_ip]),
            const SizedBox(
              height: 20,
            ),
            ShowAllDevicesInTheSmartDevice(_ip, gradientColors),
          ],
        ),
      ),
    );
  }
}

class ShowAllDevicesInTheSmartDevice extends StatefulWidget {

  const ShowAllDevicesInTheSmartDevice(this._ip, this.gradientColors);

  final String _ip;
  final List<Color> gradientColors;


  @override
  State<StatefulWidget> createState() {
    return _ShowAllDevicesInTheSmartDevice(_ip, gradientColors);
  }
}

class _ShowAllDevicesInTheSmartDevice extends State<ShowAllDevicesInTheSmartDevice> {

  _ShowAllDevicesInTheSmartDevice(this._ip, this.gradientColors) {
    getAllTheDevices();
  }

  final String _ip;
  bool _isLoading = true;
  List<SmartDeviceObject> smartDeviceObjectList;
  List<Color> gradientColors;

  void getAllTheDevices() async {
    smartDeviceObjectList = await getAllDevices(_ip);
    _isLoading = false;
    if (mounted) {
      _isLoading = false;
      setState(() {});
    }
  }

  List<Widget> listOfDevicesToShow() {
    final List<Widget> widgetList = <Widget>[];
    // TextEditingController newDeviceTextFormFieldText;
    for (final SmartDeviceObject smartDeviceObject in smartDeviceObjectList) {
      widgetList.add(NewDeviceWidget(smartDeviceObject));
    }
    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading ? const CircularProgressIndicator() :
    Expanded(
      child: Column(
        children: <Widget>[
          Expanded(
              child: ListView(
                children: listOfDevicesToShow(),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget> [
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                padding: const EdgeInsets.all(12),
                color: Colors.redAccent,
                child: const Text('Cancel',
                    style: TextStyle(color: Colors.white))
                    .tr(),
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                onPressed: () {
                  getAllTheDevices();
                  final List<SmartDeviceObject> room2DevicesList =
                      smartDeviceObjectList;
                  final SmartRoomObject newRoom = SmartRoomObject(
                      'New_devices'.tr(), room2DevicesList, gradientColors);
                  rooms.add(newRoom);
                  Navigator.pop(context);
                },
                padding: const EdgeInsets.all(12),
                color: Colors.lightGreen,
                child: const Text('Add devices',
                    style: TextStyle(color: Colors.white))
                    .tr(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NewDeviceWidget extends StatefulWidget {

  const NewDeviceWidget(this._smartDeviceObject);


  final SmartDeviceObject _smartDeviceObject;


  @override
  _NewDeviceWidget createState() => _NewDeviceWidget(_smartDeviceObject);
}

class _NewDeviceWidget extends State<NewDeviceWidget> {

  _NewDeviceWidget(this._smartDeviceObject) {
    myController.text = _smartDeviceObject.name.toString();
    SmartDeviceObject.setHomeWiFiName('host');
  }

  final TextEditingController myController = TextEditingController();
  SmartDeviceObject _smartDeviceObject;


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
          children: <Widget>[
            Row(
              children: <Widget>[
                if(_smartDeviceObject.deviceType ==
                    DeviceType.Light)
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child:
                    const CircleAvatar(
                      radius: 16,
                      child: Icon(
                          FontAwesomeIcons.solidLightbulb),
                    ),
                  ),
                if(_smartDeviceObject.deviceType ==
                    DeviceType.Blinds)
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child:
                    const CircleAvatar(
                      radius: 16,
                      child: Icon(
                          FontAwesomeIcons.satelliteDish),
                    ),
                  ),
                const Text(
                  'Device_type:_',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20,
                      color: Colors.white,
                      backgroundColor: Colors.blueGrey
//                color: Theme.of(context).textTheme.bodyText1.color,
                  ),
                ).tr(args: <String>[EnumHelper.dTToString(
                    _smartDeviceObject.deviceType)
                ]),
                if (_smartDeviceObject.deviceType ==
                    DeviceType.Light) SizedBox(
                  width: 100,
                  child: SmartDevicePage(
                      _smartDeviceObject), // The actual render of the device
                ) else
                  Container(),
              ],
            ),
            drawSmartWidgetHelper(_smartDeviceObject),
            TextFormField(
              cursorColor: Colors.black,
              style: const TextStyle(
                color: Colors.black,
                decorationColor: Colors.black,
              ),
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Room_name_is_required'.tr();
                }
                return null;
              },
//              onSaved: (roomName) => _roomName = roomName,
              decoration: InputDecoration(
                  labelText: 'Room name:'.tr(),
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    decorationColor: Colors.black,
                  )),
            ),
            TextFormField(
              controller: myController,
//              onSaved: (deviceName) => _deviceName = deviceName,
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Device_name_is_required'.tr();
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Device name:'.tr(),
              ),
            ),
            const SizedBox(
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
              padding: const EdgeInsets.all(12),
              color: Colors.blueAccent,
              child: const Text('Update', style: TextStyle(color: Colors.white))
                  .tr(),
            ),
            const SizedBox(
              height: 20,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return InsertWiFiCredentialPopup(_smartDeviceObject.ip, '');
                  },
                );
              },
              padding: const EdgeInsets.all(12),
              color: Colors.blueAccent,
              child: const Text('Update_WiFi_configuration',
                      style: TextStyle(color: Colors.white))
                  .tr(),
            ),
          ],
        ));
  }
}