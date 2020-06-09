import 'dart:async';

import 'package:CybearJinni/objects/enums.dart';
import 'package:CybearJinni/objects/smart_device/client/smart_client.dart';
import 'package:CybearJinni/objects/smart_device/smart_device_object.dart';
import 'package:grpc/grpc.dart';

import 'client/protoc_as_dart/smart_connection.pb.dart';

//  Get

Future<List<SmartDeviceObject>> getAllDevices(String deviceIp) async {
  List<SmartDeviceObject> smartDeviceList = List<SmartDeviceObject>();
  SmartDeviceObject smartDeviceObjectTemp;
  DeviceType deviceTypeTemp;

  ResponseStream<SmartDevice> smartDeviceResponseStream =
      await SmartClient.getAllDevices(deviceIp);

  await for (SmartDevice smartDevice in smartDeviceResponseStream) {
    print('Device type: ' + smartDevice.deviceType.toString());
    deviceTypeTemp = EnumHelper.stringToDt(smartDevice.deviceType);
    smartDeviceObjectTemp =
        SmartDeviceObject(deviceTypeTemp, smartDevice.name, deviceIp);
    smartDeviceList.add(smartDeviceObjectTemp);
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
