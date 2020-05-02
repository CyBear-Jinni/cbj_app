import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:smart_home_flutter/objects/smart_device/smart_device_objcet.dart';

import 'protoc_as_dart/smart_connection.pb.dart';
import 'protoc_as_dart/smart_connection.pbgrpc.dart';


class SmartClient {
  //  Get the status of smart device
  static Future<String> getSmartDeviceStatus(
      SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject);
    final SmartServerClient stub = SmartServerClient(channel);
    SmartDeviceStatus response;
    try {
      response = await stub.getStatus(SmartDevice()
        ..name = smartDeviceObject.name);
      print('Greeter client received: ${response.onOffState}');
      await channel.shutdown();
      return response.onOffState.toString();
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
    return 'error';
  }

  //  Turn smart device on
  static Future<String> setSmartDeviceOn(
      SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject);
    final SmartServerClient stub = SmartServerClient(channel);
    CommendStatus response;
    try {
      response = await stub.setOnDevice(SmartDevice()
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

  //  Turn smart device off
  static Future<String> setSmartDeviceOff(
      SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject);
    final SmartServerClient stub = SmartServerClient(channel);
    CommendStatus response;
    try {
      response = await stub.setOffDevice(SmartDevice()
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
  static Future<String> setSmartBlindsUp(
      SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject);
    final SmartServerClient stub = SmartServerClient(channel);
    CommendStatus response;
    try {
      response = await stub.setBlindsUp(SmartDevice()
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
  static Future<String> setSmartBlindsDown(
      SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject);
    final SmartServerClient stub = SmartServerClient(channel);
    CommendStatus response;
    try {
      response = await stub.setBlindsDown(SmartDevice()
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
  static Future<String> setSmartBlindsStop(
      SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject);
    final SmartServerClient stub = SmartServerClient(channel);
    CommendStatus response;
    try {
      response = await stub.setBlindsStop(SmartDevice()
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

  static ClientChannel createSmartServerClient(
      SmartDeviceObject smartDeviceObject) {
    return ClientChannel(smartDeviceObject.ip,
        port: 50051,
        options:
        const ChannelOptions(credentials: ChannelCredentials.insecure()));
  }
}
