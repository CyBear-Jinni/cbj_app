import 'package:connectivity/connectivity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/client/protoc_as_dart/smart_connection.pb.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/smart_device_object.dart';
import 'package:cybear_jinni/infrastructure/core/shared_methods.dart';
import 'package:flutter/foundation.dart';

import 'client/smart_client.dart';

class SmartBlindsObject extends SmartDeviceObject {
  SmartBlindsObject(DeviceTypes deviceType, String name, String ip)
      : super(deviceType, name, ip);

  Future<String> blindsUp() async {
    // Skipping for App on web browser because crash on connectivityResult line an setLightStateLocal
    if (kIsWeb) {
      return setBlindStateRemote(DeviceActions.moveUp);
    }

    final ConnectivityResult connectivityResult =
        await Connectivity().checkConnectivity();

    if (connectivityResult == ConnectivityResult.wifi &&
            await getCurrentWifiName() == SmartDeviceObject.homeWiFiName ||
        SmartDeviceObject.homeWiFiName == 'host') {
      //  If current network is the network of the smart device set using the
      //  local method and not the remote
      print('Moving blinds up LAN');
      return SmartClient.setSmartBlindsUp(this);
    } else if (connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.mobile) {
      print('Moving blinds up Remote');
      return setBlindStateRemote(DeviceActions.moveUp);
    } else {
      print('Not connected to a network');
    }

    return 'Error getting device state';
  }

  Future<String> blindsDown() async {
    // Skipping for App on web browser because crash on connectivityResult
    // line an setLightStateLocal
    if (kIsWeb) {
      return setBlindStateRemote(DeviceActions.moveDown);
    }

    final ConnectivityResult connectivityResult =
        await Connectivity().checkConnectivity();

    if (connectivityResult == ConnectivityResult.wifi &&
            await getCurrentWifiName() == SmartDeviceObject.homeWiFiName ||
        SmartDeviceObject.homeWiFiName == 'host') {
      //  If current network is the network of the smart device set using the
      //  local method and not the remote
      print('Moving blinds Down LAN');
      return SmartClient.setSmartBlindsDown(this);
    } else if (connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.mobile) {
      print('Moving blinds down Remote');
      return setBlindStateRemote(DeviceActions.moveDown);
    } else {
      print('Not connected to a network');
    }

    return 'Error getting device state';
  }

  Future<String> blindsStop() async {
    // Skipping for App on web browser because crash on connectivityResult line an setLightStateLocal
    if (kIsWeb) {
      return setBlindStateRemote(DeviceActions.stop);
    }

    final ConnectivityResult connectivityResult =
        await Connectivity().checkConnectivity();

    if (connectivityResult == ConnectivityResult.wifi &&
            await getCurrentWifiName() == SmartDeviceObject.homeWiFiName ||
        SmartDeviceObject.homeWiFiName == 'host') {
      //  If current network is the network of the smart device set using the local method and not the remote
      print('Stopping blinds LAN');
      return SmartClient.setSmartBlindsStop(this);
    } else if (connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.mobile) {
      print('Stopping blinds Remote');
      return setBlindStateRemote(DeviceActions.stop);
    } else {
      print('Not connected to a network');
    }

    return 'Error getting device state';
  }

  Future<String> setBlindStateRemote(DeviceActions deviceAction) async {
    return (await fireStoreClass!
            .changeBlindsState(roomName!, name!, deviceAction))
        .toString();
  }
}
