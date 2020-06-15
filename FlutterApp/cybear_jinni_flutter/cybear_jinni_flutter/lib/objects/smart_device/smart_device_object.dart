import 'dart:io';

import 'package:CybearJinni/database/firebase/cloud_firestore/firestore_class.dart';
import 'package:CybearJinni/objects/smart_device/send_to_smart_device.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';

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

    if (connectivityResult == ConnectivityResult.wifi &&
        await getCurrentWifiName() == homeWifiName) {
      //  If current network is the network of the smart device set using the local method and not the remote
      return await getDeviceStatesLocal();
    } else if (connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.mobile) {
      return await getDeviceStatesRemote();
    } else {
      print('Not connected to a network');
    }
    return 'Error getting device state';
  }

  //  Not working, maybe not support android 10 yet https://github.com/flutter/flutter/issues/51529
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
      } else if (Platform.isAndroid) {
        var status = await Permission.location.status;
        if (status.isUndetermined || status.isDenied || status.isRestricted) {
          if (await Permission.location
              .request()
              .isGranted) {
// Either the permission was already granted before or the user just granted it.
          }
        }
        wifiName = await _connectivity.getWifiName();
      }
      else {
        print('Does not support this platform');
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

    if (connectivityResult == ConnectivityResult.wifi &&
        await getCurrentWifiName() ==
            homeWifiName) { //  If current network is the network of the smart device set using the local method and not the remote
      return await setLightStateLocal(state);
    } else if (connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.mobile) {
      return await setLightStateRemote(state);
    } else {
      print('Not connected to a network');
    }
    return 'Error setting light status';
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
