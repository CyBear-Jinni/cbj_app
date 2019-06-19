import 'dart:io';

import '../shered/deviceInformation.dart';
import '../shered/networkManager.dart';
import 'smarDeviceObjects/abstractSmartDevices/smartDeviceBaseAbstract.dart';
import 'smarDeviceObjects/dinamicDevices/dynamicLightObject.dart';
import 'smarDeviceObjects/simpleDevices/lightObject.dart';
import 'smarDeviceObjects/staticDevices/blindsObject.dart';

class SmartDeviceMain {
  List<SmartDeviceBaseAbstract> smartDevicesList;

  SmartDeviceMain() {
    print("Smart device is activaited");
    smartDevicesList = new List<SmartDeviceBaseAbstract>();
    SmartDeviceMainAsync();
  }

  void SmartDeviceMainAsync() async {
    await setAllDevices();

    await waitForConnection();
  }

  // TODO: Pull the saved devices into the app variables
  // Setting all the devices from saved data
  void setAllDevices() async {
    await smartDevicesList
        .add(new LightObject("30:23:a2:G3:34", "Guy silling light"));
    smartDevicesList[0].deviceInformation =
        new RemoteDevice('mac Adress', 'Guy lamp', '10.0.0.21');
    await smartDevicesList.add(new Blinds("30:23:a2:G3:34", "Guy bed light"));
    await smartDevicesList
        .add(new DynamicLight("30:23:a2:G3:34", "Guy electronic table light"));
  }

  // Listening to port and getting deciding what to do with the response
  void waitForConnection() async {
    while (true) {
      HttpRequest connectedDevice = await NetworkManager.PortListening();

      String smartDeviceResponse =
          await processTheResponse(connectedDevice.uri.pathSegments);

      NetworkManager.SendResponse(connectedDevice, smartDeviceResponse);
    }
  }

  // Process Response to device
  Future<String> processTheResponse(List<String> pathSegments) async {
    print('req' + pathSegments.toString());
    //    macAddress: The mac Address of the physical device unique per device
    //    deviceUniqueNumber: the unique number of the device on the same mac address, can be multiple unique numbers on the same physical device (macAddress)
    //    action: What the device need to do
    //    10.0.0.10:4141/macAddress/deviceUniqueNumber/action
    if (pathSegments.length < 3)
      return pathSegments.length.toString() + " is not enough parameter";
    if (int.tryParse(pathSegments[1]) == null)
      return 'Second parameter need to be number';
    int deviceNumber = int.tryParse(pathSegments[1]);
    if (deviceNumber >= smartDevicesList.length)
      return 'Device ${deviceNumber} is not exist';

    String smartDeviceResponse =
        await smartDevicesList[deviceNumber].ExecuteWish(pathSegments[2]);

    return smartDeviceResponse;
  }
}
