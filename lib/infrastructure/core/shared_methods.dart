import 'dart:io';

import 'package:cybear_jinni/utils.dart';
import 'package:flutter/services.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

///  Does not work if you do not turn your location (not permission) on https://github.com/flutter/flutter/issues/51529 android 10+ rules
Future<String?> getCurrentWifiName() async {
  String? wifiName = '';

  try {
    if (Platform.isIOS || Platform.isAndroid) {
      if (await Permission.location.serviceStatus.isEnabled) {
        // permission is enabled
        final PermissionStatus status = await Permission.location.status;
        if (status.isDenied || status.isRestricted) {
          if (await Permission.location.request().isGranted) {
            // Either the permission was already granted before or the user just granted it.
          }
        }
        wifiName = await NetworkInfo().getWifiName();
      } else {
        logger.w('Permission is not enabled');
      }
    } else {
      logger.w('Does not support this platform');
    }
  } on PlatformException catch (e) {
    logger.e('Failed to get Wifi Name\n$e');
//      wifiName = "Failed to get Wifi Name";
  } catch (exception) {
    logger.e(exception.toString());
  }
  return wifiName;
}
