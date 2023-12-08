import 'dart:async';

import 'package:cbj_integrations_controller/domain/mqtt_server/i_mqtt_server_repository.dart';
import 'package:cbj_integrations_controller/domain/saved_devices/i_saved_devices_repo.dart';
import 'package:cbj_integrations_controller/infrastructure/devices/companies_connector_conjecture.dart';
import 'package:cbj_integrations_controller/infrastructure/devices/helper_methods/device_helper_methods.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/hub_client/hub_client.dart';
import 'package:cybear_jinni/infrastructure/core/logger.dart';
import 'package:network_tools/network_tools.dart';

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
