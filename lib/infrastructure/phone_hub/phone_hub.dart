import 'dart:async';

import 'package:cbj_integrations_controller/domain/saved_devices/i_saved_devices_repo.dart';
import 'package:cbj_integrations_controller/infrastructure/devices/companies_connector_conjector.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cbj_smart_device/application/usecases/smart_server_u/smart_server_u.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:network_info_plus/network_info_plus.dart';
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
    final Either<dynamic, String> a = await _instance.searchCamera();
    a.fold(
      (l) => logger.i('Found smart camera no'),
      (r) => logger.i('Found smart camera'),
    );
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

  Future<Either<dynamic, String>> searchCamera() async {
    String? currentDeviceIP;
    try {
      final NetworkInfo networkInfo = NetworkInfo();
      currentDeviceIP = await networkInfo.getWifiIP();

      if (currentDeviceIP == null) {
        return left('off');
      }

      final String subnet =
          currentDeviceIP.substring(0, currentDeviceIP.lastIndexOf('.'));

      logger.i('CBJ smart camera search subnet IP $subnet');

      final Stream<ActiveHost> devicesWithPort =
          HostScanner.scanDevicesForSinglePort(
        subnet,
        CbjSmartDeviceServerU.port,

        /// TODO: return this settings when can use with the await for loop
        // resultsInIpAscendingOrder: false,
        timeout: const Duration(milliseconds: 600),
      );

      await for (final ActiveHost activeHost in devicesWithPort) {
        logger.i('Found CBJ Smart security camera: ${activeHost.address}');
        return right(activeHost.address);
      }
    } catch (e) {
      logger.w('Exception searchForHub\n$e');
    }
    return left('off');
  }
}
