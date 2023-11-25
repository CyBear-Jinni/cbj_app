import 'dart:async';

import 'package:cbj_integrations_controller/domain/saved_devices/i_saved_devices_repo.dart';
import 'package:cbj_integrations_controller/infrastructure/devices/companies_connector_conjector.dart';
import 'package:cbj_integrations_controller/infrastructure/devices/helper_methods/device_helper_methods.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cybear_jinni/infrastructure/hub_client/hub_client.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:network_tools/network_tools.dart';

class PhoneHub {
  factory PhoneHub() {
    return _instance;
  }

  PhoneHub._singletonContractor();

  static final PhoneHub _instance = PhoneHub._singletonContractor();

  bool phoneAsHub = false;

  Future<Map<String, DeviceEntityAbstract>> get getAllDevices {
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

  startListen() {
    phoneAsHub = true;
    CompaniesConnectorConjector.updateAllDevicesReposWithDeviceChanges(
      AppRequestsToHub.appRequestsToHubStreamController.stream
          .map((clientStatusRequests) {
        if (!phoneAsHub) {
          return '';
        }
        dynamic dtosEntity =
            DeviceHelperMethods.clientStatusRequestsToItsDtosType(
          clientStatusRequests,
        );
        if (dtosEntity is DeviceEntityAbstract) {
          dtosEntity.entityStateGRPC =
              EntityState(EntityStateGRPC.waitingInComp.toString());
          return dtosEntity;
        }
        return '';
      }),
    );
  }
}
