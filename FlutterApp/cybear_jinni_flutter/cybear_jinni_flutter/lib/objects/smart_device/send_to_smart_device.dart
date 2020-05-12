import 'dart:async';

import 'package:cybearjinni/objects/smart_device/client/smart_client.dart';
import 'package:cybearjinni/objects/smart_device/smart_device_objcet.dart';

//  Get

//  Request device state, on or off
Future<String> getDeviceStateRequest(
    SmartDeviceObject smartDeviceObject) async {
  return await SmartClient.getSmartDeviceStatus(smartDeviceObject);
}

Future<String> turnOn(SmartDeviceObject smartDeviceObject) async {
  String deviceSuccessStatus =
      await SmartClient.setSmartDeviceOn(smartDeviceObject);
  print('The return is: ' + deviceSuccessStatus.toString());
  return deviceSuccessStatus;
}

Future<String> turnOff(SmartDeviceObject smartDeviceObject) async {
  String deviceSuccessStatus =
      await SmartClient.setSmartDeviceOff(smartDeviceObject);
  print('The return is: ' + deviceSuccessStatus.toString());
  return deviceSuccessStatus;
}
