import 'dart:async';

import 'package:cybear_jinni/domain/auth/i_auth_facade.dart';
import 'package:cybear_jinni/domain/core/errors.dart';
import 'package:cybear_jinni/infrastructure/core/constant_credentials.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/client/protoc_as_dart/smart_connection.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/smart_device_object.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:grpc/grpc.dart';

class SmartClient {
  ///  Get comp info
  ///  getSmartDeviceStatus
  static Future<CompInfo> getCompInfo(String compIp) async {
    final ClientChannel channel = createSmartServerClient(compIp);
    final SmartServerClient stub = SmartServerClient(channel);
    CompInfo response;
    try {
      response = await stub.getCompInfo(CommendStatus()..success = true);
      print('Greeter client received: ${response.compSpecs.compUuid}');
      await channel.shutdown();
      return response;
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
    return CompInfo();
  }

  static Future<String> setFirebaseAccountInformationFlutter(
      SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject.ip);
    final SmartServerClient stub = SmartServerClient(channel);

    final String fireBaseProjectId = ConstantCredentials.fireBaseProjectId;
    final String fireBaseApiKey = ConstantCredentials.fireBaseApiKey;
    final String userEmail = ConstantCredentials.userEmail;
    final String userPassword = ConstantCredentials.userPassword;
    final String homeId = (await getIt<IAuthFacade>().getCurrentHome())
        .getOrElse(() => throw MissingCurrentHomeError())
        .id
        .getOrCrash();

    CommendStatus response;
    try {
      response =
          await stub.setFirebaseAccountInformation(FirebaseAccountInformation()
            ..fireBaseProjectId = fireBaseProjectId
            ..fireBaseApiKey = fireBaseApiKey
            ..userEmail = userEmail
            ..userPassword = userPassword
            ..homeId = homeId);
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

  ///  Get the status of smart device
  static Future<String> getSmartDeviceStatus(
      SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject.ip);
    final SmartServerClient stub = SmartServerClient(channel);
    SmartDeviceStatus response;
    try {
      response =
          await stub.getStatus(SmartDeviceInfo()..id = smartDeviceObject.name);
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
      final SmartDeviceUpdateDetails smartDeviceUpdateDetails =
          SmartDeviceUpdateDetails();
      smartDeviceUpdateDetails.smartDevice = SmartDeviceInfo()
        ..id = smartDeviceObject.name;
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

  ///  Turn smart device on
  static Future<String> setSmartDeviceOn(
      SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject.ip);
    final SmartServerClient stub = SmartServerClient(channel);
    CommendStatus response;
    try {
      response = await stub
          .setOnDevice(SmartDeviceInfo()..id = smartDeviceObject.name);
      print('Greeter client received: ${response.success}');
      await channel.shutdown();
      return response.success.toString();
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
    return 'error';
  }

  ///  Turn smart device off
  static Future<String> setSmartDeviceOff(
      SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject.ip);
    final SmartServerClient stub = SmartServerClient(channel);
    CommendStatus response;
    try {
      response = await stub
          .setOffDevice(SmartDeviceInfo()..id = smartDeviceObject.name);
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

  ///  Turn smart blinds up
  static Future<String> setSmartBlindsUp(
      SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject.ip);
    final SmartServerClient stub = SmartServerClient(channel);
    CommendStatus response;
    try {
      response = await stub
          .setBlindsUp(SmartDeviceInfo()..id = smartDeviceObject.name);
      print('Greeter client received: ${response.success}');
      await channel.shutdown();
      return response.success.toString();
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
    return 'error';
  }

  ///  Turn smart blinds down
  static Future<String> setSmartBlindsDown(
      SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject.ip);
    final SmartServerClient stub = SmartServerClient(channel);
    CommendStatus response;
    try {
      response = await stub
          .setBlindsDown(SmartDeviceInfo()..id = smartDeviceObject.name);
      print('Greeter client received: ${response.success}');
      await channel.shutdown();
      return response.success.toString();
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
    return 'error';
  }

  ///  Stop smart blinds
  static Future<String> setSmartBlindsStop(
      SmartDeviceObject smartDeviceObject) async {
    final ClientChannel channel = createSmartServerClient(smartDeviceObject.ip);
    final SmartServerClient stub = SmartServerClient(channel);
    CommendStatus response;
    try {
      response = await stub
          .setBlindsStop(SmartDeviceInfo()..id = smartDeviceObject.name);
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
