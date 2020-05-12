import 'dart:io';

import 'package:CybearJinni/database/firebase/cloud_firestore/firestore_class.dart';
import 'package:CybearJinni/objects/smart_device/send_to_smart_device.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/services.dart';

import '../enums.dart';

class SmartDeviceObject {
  DeviceType deviceType;
  String roomName;
  String name;
  String ip;
  FireStoreClass _fireStoreClass;
  static const String homeWifiName = '***REMOVED***';

  SmartDeviceObject(this.deviceType, this.name, String ip, [this.roomName]) {
    if (legitIp(ip)) {
      //  Checks if regex contained only valid ip and nothing else
      this.ip = ip;
    } else {
      throw ('Incorrect formet of IP');
    }
    _fireStoreClass = FireStoreClass();
  }

  //  Get

  Future<bool> getDeviceStateAsBool() async {
    String deviceState = await getDeviceState();
    return deviceState == 'true' ? true : false;
  }

  Future<String> getDeviceState() async {
    // TODO: network does not need to be created for each device in the network
    var connectivityResult = await (Connectivity().checkConnectivity());

    //TODO: add check if the wifi that connected is the home wifi
    if (connectivityResult == ConnectivityResult.wifi) {
      return await getDeviceStatesLocal();
    } else if (connectivityResult == ConnectivityResult.mobile) {
      print('Connected to mobile network');
      return await getDeviceStatesRemote();
    } else {
      print('Not connected to a network');
    }
    return 'Error getting device state';
  }

  //  Not working, maybe not support android 10 yet
  Future<String> getCurrentWifiName() async {
    String wifiName = '';

    try {
      final Connectivity _connectivity = Connectivity();

      if (Platform.isIOS) {
        LocationAuthorizationStatus status =
            await _connectivity.getLocationServiceAuthorization();
        if (status == LocationAuthorizationStatus.notDetermined) {
          status = await _connectivity.requestLocationServiceAuthorization();
        }
        if (status == LocationAuthorizationStatus.authorizedAlways ||
            status == LocationAuthorizationStatus.authorizedWhenInUse) {
          wifiName = await _connectivity.getWifiName();
        } else {
          wifiName = await _connectivity.getWifiName();
        }
      } else {
        wifiName = await _connectivity.getWifiName();
      }
    } on PlatformException catch (e) {
      print(e.toString());
      print('Failed to get Wifi Name');
//      wifiName = "Failed to get Wifi Name";
    } catch (exception) {
      print(exception.toString());
    }
    return wifiName;
  }

  Future<String> getDeviceStatesLocal() async {
    String deviceStateString = await getDeviceStateRequest(this);
    print("Go on little one: " + deviceStateString);
    return deviceStateString;
  }

  Future<String> getDeviceStatesRemote() async {
    return await _fireStoreClass.getDeviceStatus(roomName, name);
  }

  //  Set

  Future<String> setLightState(bool state) async {
    // TODO: network does not need to be created for each device in the network
    var connectivityResult = await (Connectivity().checkConnectivity());

    //TODO: add check if the wifi that connected is the home wifi
    if (connectivityResult == ConnectivityResult.wifi) {
      print('Connectd to wifi');
      return await setLightStateLocal(state);
    } else if (connectivityResult == ConnectivityResult.mobile) {
      print('Connected to mobile network');
      return await setLightStateRemote(state);
    } else {
      print('Not connected to a network');
    }
    return 'Error seting light status';
  }

  Future<String> setLightStateLocal(bool state) async {
    return state ? await turnOn(this) : await turnOff(this);
  }

  Future<String> setLightStateRemote(bool state) async {
    return (await _fireStoreClass.changeSwitchState(roomName, name, state))
        .toString();
  }

  static bool legitIp(String ip) {
    String tempRegExIp = regexpIP(ip); //  Save to string a valid ip
    return ip.length == tempRegExIp.length;
  }

  static String regexpIP(String ip) {
    return RegExp(
            r'((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))')
        .stringMatch(ip);
  }
}
