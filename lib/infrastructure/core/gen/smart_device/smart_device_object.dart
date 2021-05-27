import 'dart:io';

import 'package:connectivity/connectivity.dart' as connectivity;
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/send_to_smart_device.dart';
import 'package:cybear_jinni/infrastructure/database/firebase/cloud_firestore/firestore_class.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wifi_info_flutter/wifi_info_flutter.dart';

import 'client/protoc_as_dart/smart_connection.pbgrpc.dart';

class SmartDeviceObject {
  SmartDeviceObject(this.deviceType, this.name, String ip, [this.roomName]) {
    if (legitIp(ip)) {
      //  Checks if regex contained only valid ip and nothing else
      this.ip = ip;
    } else {
      throw 'Incorrect format of IP';
    }
    fireStoreClass = FireStoreClass();
  }

  DeviceTypes? deviceType;
  String? roomName;
  String? name;
  String? ip;
  FireStoreClass? fireStoreClass;
  static String? homeWiFiName = ''; // Insert host name

  //  Set
  static void setHomeWiFiName(String homeWiFiNameTemp) {
    homeWiFiName = homeWiFiNameTemp;
  }

  //  Get

  Future<bool> getDeviceStateAsBool() async {
    final String deviceState = await getDeviceState();
    return deviceState == 'true';
  }

  Future<String> getDeviceState() async {
    // Skipping for App on web browser because crash on connectivityResult line an getDeviceStatesLocal
    if (kIsWeb) {
      return getDeviceStatesRemote();
    }

    // TODO: network does not need to be created for each device in the network
    final connectivity.ConnectivityResult connectivityResult =
        await connectivity.Connectivity().checkConnectivity();

    if (connectivityResult == connectivity.ConnectivityResult.wifi &&
        (await getCurrentWifiName() == homeWiFiName ||
            homeWiFiName == 'host')) {
      //  If current network is the network of the smart device set using the local method and not the remote
      return getDeviceStatesLocal();
    } else if (connectivityResult == connectivity.ConnectivityResult.wifi ||
        connectivityResult == connectivity.ConnectivityResult.mobile) {
      return getDeviceStatesRemote();
    } else {
      print('Not connected to a network');
    }
    return 'Error getting device state';
  }

  ///  Does not work if you do not turn your location (not permission) on https://github.com/flutter/flutter/issues/51529 android 10+ rules
  Future<String> getCurrentWifiName() async {
    String wifiName = '';

    try {
      final WifiInfo _wifiInfo = WifiInfo();

      if (Platform.isIOS) {
        LocationAuthorizationStatus status =
            await _wifiInfo.getLocationServiceAuthorization();
        if (status == LocationAuthorizationStatus.notDetermined) {
          status = await _wifiInfo.requestLocationServiceAuthorization();
        }
        if (status == LocationAuthorizationStatus.authorizedAlways ||
            status == LocationAuthorizationStatus.authorizedWhenInUse) {
          wifiName = (await _wifiInfo.getWifiName())!;
        } else {
          wifiName = (await _wifiInfo.getWifiName())!;
        }
      } else if (Platform.isAndroid) {
        final PermissionStatus status = await Permission.location.status;
        if (status.isDenied || status.isRestricted) {
          if (await Permission.location.request().isGranted) {
// Either the permission was already granted before or the user just granted it.
          }
        }
        wifiName = (await _wifiInfo.getWifiName())!;
      } else {
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
    final String deviceStateString = await getDeviceStateRequest(this);
    print('Go on little one: $deviceStateString');
    return deviceStateString;
  }

  Future<String> getDeviceStatesRemote() async {
    return fireStoreClass!.getDeviceStatus(roomName!, name!);
  }

  //  Set

  Future<String> setLightState(bool state) async {
    // Skipping for App on web browser because crash on connectivityResult line an setLightStateLocal
    if (kIsWeb) {
      return setLightStateRemote(state);
    }

    // TODO: network does not need to be created for each device in the network
    final connectivity.ConnectivityResult connectivityResult =
        await connectivity.Connectivity().checkConnectivity();

    if (connectivityResult == connectivity.ConnectivityResult.wifi &&
            await getCurrentWifiName() == homeWiFiName ||
        homeWiFiName == 'host') {
      //  If current network is the network of the smart device set using the local method and not the remote
      print('Set light state $state local');
      return setLightStateLocal(state);
    } else if (connectivityResult == connectivity.ConnectivityResult.wifi ||
        connectivityResult == connectivity.ConnectivityResult.mobile) {
      print('Set light state $state remote');
      return setLightStateRemote(state);
    } else {
      print('Not connected to a network');
    }
    return 'Error setting light status';
  }

  Future<String> setLightStateLocal(bool state) async {
    return state ? await turnOn(this) : await turnOff(this);
  }

  Future<String> setLightStateRemote(bool state) async {
    return (await fireStoreClass!.changeSwitchState(roomName!, name!, state))
        .toString();
  }

  static bool legitIp(String ip) {
    final String tempRegExIp = regexpIP(ip)!; //  Save to string a valid ip
    // return ip != '' && ip.length == tempRegExIp.length;
    return ip != '';
  }

  static String? regexpIP(String ip) {
    return RegExp(
            r'((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))')
        .stringMatch(ip);
  }

  // Execute

  Future<String?> executeWish(DeviceActions deviceAction) async {
    String? executeOutput;
    switch (deviceAction) {
      case DeviceActions.on:
        executeOutput = await setLightState(true);
        break;
      case DeviceActions.off:
        executeOutput = await setLightState(false);
        break;
      // case DeviceActions.SChangeState:
      //   print('ChangeState not supported light');
      //   executeOutput = 'ChangeState not supported light';
      //   break;
      case DeviceActions.moveUP:
        print('Blinds not supported for light');
        executeOutput = 'Blinds not supported for light';
        break;
      case DeviceActions.moveDown:
        print('Blinds not supported for light');
        executeOutput = 'Blinds not supported for light';
        break;
      case DeviceActions.stop:
        print('Blinds not supported for light');
        executeOutput = 'Blinds not supported for light';
        break;
      case DeviceActions.actionNotSupported:
        print('The action is not supported');
        executeOutput = 'Action is not supported for light';
        break;
    }
    return executeOutput;
  }
}
