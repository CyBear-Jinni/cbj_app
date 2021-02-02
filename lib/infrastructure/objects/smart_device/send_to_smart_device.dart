import 'dart:async';

import 'package:cybear_jinni/infrastructure/objects/enums.dart';
import 'package:cybear_jinni/infrastructure/objects/smart_device/client/smart_client.dart';
import 'package:cybear_jinni/infrastructure/objects/smart_device/smart_blinds_object.dart';
import 'package:cybear_jinni/infrastructure/objects/smart_device/smart_device_object.dart';
import 'package:grpc/grpc.dart';

import 'client/protoc_as_dart/smart_connection.pb.dart';

//  Get

Future<List<SmartDeviceObject>> getAllDevices(String deviceIp) async {
  final List<SmartDeviceObject> smartDeviceObjectList = [];
  SmartDeviceObject smartDeviceObjectTemp;
  SmartBlindsObject smartBlindsObjectTemp;
  DeviceType deviceTypeTemp;

  final ResponseStream<SmartDevice> smartDeviceResponseStream =
      await SmartClient.getAllDevices(deviceIp);

  await for (final SmartDevice smartDevice in smartDeviceResponseStream) {
    print('Device type: ${smartDevice.deviceType}');
    deviceTypeTemp = EnumHelper.stringToDt(smartDevice.deviceType);
    switch (deviceTypeTemp) {
      case DeviceType.Light:
        smartDeviceObjectTemp =
            SmartDeviceObject(deviceTypeTemp, smartDevice.name, deviceIp);
        smartDeviceObjectList.add(smartDeviceObjectTemp);
        break;
      case DeviceType.Blinds:
        smartBlindsObjectTemp =
            SmartBlindsObject(deviceTypeTemp, smartDevice.name, deviceIp);
        smartDeviceObjectList.add(smartBlindsObjectTemp);
        break;
      case DeviceType.DynamicLight:
        // TODO: Handle this case.
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
  }
  return smartDeviceObjectList;
}

///  Request device state, on or off
Future<String> getDeviceStateRequest(
    SmartDeviceObject smartDeviceObject) async {
  return SmartClient.getSmartDeviceStatus(smartDeviceObject);
}

Future<String> updateDeviceName(
    SmartDeviceObject smartDeviceObject, String newName) async {
  return SmartClient.updateDeviceName(smartDeviceObject, newName);
}

Future<String> turnOn(SmartDeviceObject smartDeviceObject) async {
  final String deviceSuccessStatus =
      await SmartClient.setSmartDeviceOn(smartDeviceObject);
  print('The return is: $deviceSuccessStatus');
  return deviceSuccessStatus;
}

Future<String> turnOff(SmartDeviceObject smartDeviceObject) async {
  final String deviceSuccessStatus =
      await SmartClient.setSmartDeviceOff(smartDeviceObject);
  print('The return is: $deviceSuccessStatus');
  return deviceSuccessStatus;
}
