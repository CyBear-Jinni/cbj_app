import 'dart:async';

import 'package:CybearJinni/objects/smart_device/client/smart_client.dart';
import 'package:CybearJinni/objects/smart_device/smart_device_objcet.dart';
import 'package:grpc/grpc.dart';

import 'client/protoc_as_dart/smart_connection.pb.dart';

//  Get

Future<List<SmartDevice>> getAllDevices(String deviceIp) async {
  List<SmartDevice> smartDeviceList = List<SmartDevice>();
  ResponseStream<SmartDevice> a = await SmartClient.getAllDevices(deviceIp);
  await for (SmartDevice smartDevice in a) {
    print('Device type: ' + smartDevice.deviceType.toString());
    smartDeviceList.add(smartDevice);
  }
  return smartDeviceList;
}

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
