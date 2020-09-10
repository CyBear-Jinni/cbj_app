import 'dart:async';

import 'package:CyBearJinni/core/constant_credentials.dart';
import 'package:CyBearJinni/objects/smart_device/smart_device_object.dart';
import 'package:grpc/grpc.dart';

import 'protoc_as_dart/smart_connection.pb.dart';
import 'protoc_as_dart/smart_connection.pbgrpc.dart';

class SmartClient {
  static Future<ResponseStream<SmartDevice>> getAllDevices(
      String deviceIp) async {
    final ClientChannel channel = createSmartServerClient(deviceIp);
    final SmartServerClient stub = SmartServerClient(channel);
    ResponseStream<SmartDevice> response;
    try {
      SmartDeviceStatus temp = SmartDeviceStatus();
      temp.onOffState = true;
      response = stub.getAllDevices(temp);

      print('Greeter client received: ${response.toString()}');
//      await channel.shutdown();
      return response;
    } catch (e) {
      print('Caught error: $e');
    }
//    await channel.shutdown();
    return null;
  }

  static Future<String> setFirebaseAccountInformationFlutter(
      SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject.ip);
    final SmartServerClient stub = SmartServerClient(channel);

    String fireBaseProjectId = ConstantCredentials.fireBaseProjectId;
    String fireBaseApiKey = ConstantCredentials.fireBaseApiKey;
    String userEmail = ConstantCredentials.userEmail;
    String userPassword = ConstantCredentials.userPassword;

    CommendStatus response;
    try {
      response =
          await stub.setFirebaseAccountInformation(FirebaseAccountInformation()
            ..fireBaseProjectId = fireBaseProjectId
            ..fireBaseApiKey = fireBaseApiKey
            ..userEmail = userEmail
            ..userPassword = userPassword);
      print(
          'Firebase account information client received: ${response.success}');
      await channel.shutdown();
      return response.success.toString();
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
    return 'error';
  }

  //  Get the status of smart device
  static Future<String> getSmartDeviceStatus(
      SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject.ip);
    final SmartServerClient stub = SmartServerClient(channel);
    SmartDeviceStatus response;
    try {
      response =
          await stub.getStatus(SmartDevice()..name = smartDeviceObject.name);
      print('Greeter client received: ${response.onOffState}');
      await channel.shutdown();
      return response.onOffState.toString();
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
    return 'error';
  }

  static Future<String> updateDeviceName(
      SmartDeviceObject smartDeviceObject, String newName) async {
    setFirebaseAccountInformationFlutter(smartDeviceObject);

    final ClientChannel channel = createSmartServerClient(smartDeviceObject.ip);
    final SmartServerClient stub = SmartServerClient(channel);
    CommendStatus response;
    try {
      SmartDeviceUpdateDetails smartDeviceUpdateDetails =
      SmartDeviceUpdateDetails();
      smartDeviceUpdateDetails.smartDevice = SmartDevice()
        ..name = smartDeviceObject.name;
      smartDeviceUpdateDetails.newName = newName;
      response = await stub.updateDeviceName(smartDeviceUpdateDetails);
      await channel.shutdown();
      return response.toString();
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
    return 'error';
  }

  //  Turn smart device on
  static Future<String> setSmartDeviceOn(
      SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject.ip);
    final SmartServerClient stub = SmartServerClient(channel);
    CommendStatus response;
    try {
      response =
          await stub.setOnDevice(SmartDevice()..name = smartDeviceObject.name);
      print('Greeter client received: ${response.success}');
      await channel.shutdown();
      return response.success.toString();
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
    return 'error';
  }

  //  Turn smart device off
  static Future<String> setSmartDeviceOff(SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject.ip);
    final SmartServerClient stub = SmartServerClient(channel);
    CommendStatus response;
    try {
      response =
      await stub.setOffDevice(SmartDevice()
        ..name = smartDeviceObject.name);
      print('Greeter client received: ${response.success}');
      await channel.shutdown();
      return response.success.toString();
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
    return 'error';
  }

  //  Blinds

  //  Turn smart blinds up
  static Future<String> setSmartBlindsUp(SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject.ip);
    final SmartServerClient stub = SmartServerClient(channel);
    CommendStatus response;
    try {
      response =
      await stub.setBlindsUp(SmartDevice()
        ..name = smartDeviceObject.name);
      print('Greeter client received: ${response.success}');
      await channel.shutdown();
      return response.success.toString();
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
    return 'error';
  }

  //  Turn smart blinds down
  static Future<String> setSmartBlindsDown(SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject.ip);
    final SmartServerClient stub = SmartServerClient(channel);
    CommendStatus response;
    try {
      response = await stub
          .setBlindsDown(SmartDevice()
        ..name = smartDeviceObject.name);
      print('Greeter client received: ${response.success}');
      await channel.shutdown();
      return response.success.toString();
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
    return 'error';
  }

  //  Stop smart blinds
  static Future<String> setSmartBlindsStop(SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject.ip);
    final SmartServerClient stub = SmartServerClient(channel);
    CommendStatus response;
    try {
      response = await stub
          .setBlindsStop(SmartDevice()
        ..name = smartDeviceObject.name);
      print('Greeter client received: ${response.success}');
      await channel.shutdown();
      return response.success.toString();
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
    return 'error';
  }

  static ClientChannel createSmartServerClient(String deviceIp) {
    return ClientChannel(deviceIp,
        port: 50051,
        options:
        const ChannelOptions(credentials: ChannelCredentials.insecure()));
  }
}
