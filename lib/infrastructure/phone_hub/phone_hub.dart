import 'dart:async';

import 'package:cbj_integrations_controller/domain/saved_devices/i_saved_devices_repo.dart';
import 'package:cbj_integrations_controller/infrastructure/devices/companies_connector_conjector.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:network_tools/network_tools.dart';

class PhoneHub {
  factory PhoneHub() {
    return _instance;
  }

  PhoneHub._singletonContractor();

  static final PhoneHub _instance = PhoneHub._singletonContractor();

  Future<Map<String, DeviceEntityAbstract>> get requestsAndStatusFromHub {
    return ISavedDevicesRepo.instance.getAllDevices();
  }

  static Future searchDevices() async {
    logger.i('Found searchDevices');
    CompaniesConnectorConjector.searchDevicesByBindingIntoSockets();

    logger.i('Found searchDevices2');

    // while (true) {
    final Future<List<ActiveHost>> mdnsDevices =
        CompaniesConnectorConjector.searchMdnsDevices();
    final Future<List<ActiveHost>> pingableDevices =
        CompaniesConnectorConjector.searchPingableDevices();

    final List<ActiveHost> mdnsDevicesTemp = await mdnsDevices;
    if (mdnsDevicesTemp.isEmpty) {
      logger.i('mdnsDevicesTemp is empty');
    }
    for (final ActiveHost activeHost in mdnsDevicesTemp) {
      print('activeHost $activeHost');
      CompaniesConnectorConjector.setMdnsDeviceByCompany(activeHost);
      // }

      final List<ActiveHost> pingableDevicesTemp = await pingableDevices;
      if (pingableDevicesTemp.isEmpty) {
        logger.i('pingableDevicesTemp is empty');
      }
      for (final ActiveHost activeHost in pingableDevicesTemp) {
        print('activeHost2 $activeHost');
        CompaniesConnectorConjector.setHostNameDeviceByCompany(
          activeHost: activeHost,
        );
      }
    }
  }
}
