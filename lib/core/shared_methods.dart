import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';

///  Does not work if you do not turn your location (not permission) on https://github.com/flutter/flutter/issues/51529 android 10+ rules
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
      final PermissionStatus status = await Permission.location.status;
      if (status.isUndetermined || status.isDenied || status.isRestricted) {
        if (await Permission.location.request().isGranted) {
// Either the permission was already granted before or the user just granted it.
        }
      }
      wifiName = await _connectivity.getWifiName();
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
