import 'dart:async';

import 'package:cbj_integrations_controller/domain/i_saved_devices_repo.dart';
import 'package:cbj_integrations_controller/infrastructure/devices/helper_methods/device_helper_methods.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/hub_client/hub_client.dart';
import 'package:cbj_integrations_controller/infrastructure/search_devices.dart';
import 'package:cybear_jinni/infrastructure/core/logger.dart';

part 'package:cybear_jinni/infrastructure/phone_as_hub.dart';

abstract interface class IPhoneAsHub {
  static IPhoneAsHub? _instance;

  static IPhoneAsHub get instance {
    return _instance ??= _PhoneAsHubRepository();
  }

  Future searchDevices();

  Future<Map<String, DeviceEntityAbstract>> get getAllDevices;

  void startListen();
  Future dispose();
}
