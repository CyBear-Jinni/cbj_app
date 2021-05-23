import 'dart:async';

import 'package:cybear_jinni/infrastructure/core/gen/smart_device/client/smart_client.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/smart_blinds_object.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/smart_device_object.dart';
import 'package:cybear_jinni/infrastructure/objects/enums.dart';

import 'client/protoc_as_dart/smart_connection.pb.dart';

//  Get

Future<List<SmartDeviceObject>> getAllDevices(String deviceIp) async {
  final List<SmartDeviceObject> smartDeviceObjectList = [];
  SmartDeviceObject smartDeviceObjectTemp;
  SmartBlindsObject smartBlindsObjectTemp;
  DeviceTypeEnum deviceTypeTemp;

  final CompInfo compInfo = await SmartClient.getCompInfo(deviceIp);

  for (final SmartDeviceInfo smartDeviceInfo in compInfo.smartDevicesInComp) {
    print('Device type: $smartDeviceInfo');
    deviceTypeTemp = EnumHelper.stringToDt(
        smartDeviceInfo.deviceTypesActions.deviceType.toString());
    switch (deviceTypeTemp) {
      case DeviceTypeEnum.Light:
        smartDeviceObjectTemp =
            SmartDeviceObject(deviceTypeTemp, smartDeviceInfo.id, deviceIp);
        smartDeviceObjectList.add(smartDeviceObjectTemp);
        break;
      case DeviceTypeEnum.Blinds:
        smartBlindsObjectTemp =
            SmartBlindsObject(deviceTypeTemp, smartDeviceInfo.id, deviceIp);
        smartDeviceObjectList.add(smartBlindsObjectTemp);
        break;
      case DeviceTypeEnum.DynamicLight:
        // TODO: Handle this case.
        break;
      case DeviceTypeEnum.Boiler:
        // TODO: Handle this case.
        break;
      case DeviceTypeEnum.Fan:
        // TODO: Handle this case.
        break;
      case DeviceTypeEnum.AirConditioner:
        // TODO: Handle this case.
        break;
      case DeviceTypeEnum.Camera:
        // TODO: Handle this case.
        break;
      case DeviceTypeEnum.Fridge:
        // TODO: Handle this case.
        break;
      case DeviceTypeEnum.Toaster:
        // TODO: Handle this case.
        break;
      case DeviceTypeEnum.CoffeeMachine:
        // TODO: Handle this case.
        break;
      case DeviceTypeEnum.SmartTV:
        // TODO: Handle this case.
        break;
      case DeviceTypeEnum.RCAirplane:
        // TODO: Handle this case.
        break;
      case DeviceTypeEnum.RCCar:
        // TODO: Handle this case.
        break;
      case DeviceTypeEnum.Speakers:
        // TODO: Handle this case.
        break;
      case DeviceTypeEnum.Roomba:
        // TODO: Handle this case.
        break;
      case DeviceTypeEnum.Irrigation:
        // TODO: Handle this case.
        break;
      case DeviceTypeEnum.SmartBed:
        // TODO: Handle this case.
        break;
      case DeviceTypeEnum.AnimalTracker:
        // TODO: Handle this case.
        break;
      case DeviceTypeEnum.SmartCar:
        // TODO: Handle this case.
        break;
      case DeviceTypeEnum.SmartPool:
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
