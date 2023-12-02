import 'dart:async';

import 'package:cbj_integrations_controller/domain/saved_devices/i_saved_devices_repo.dart';
import 'package:cbj_integrations_controller/infrastructure/devices/companies_connector_conjecture.dart';
import 'package:cbj_integrations_controller/infrastructure/devices/helper_methods/device_helper_methods.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/value_objects_core.dart';
import 'package:cbj_integrations_controller/infrastructure/hub_client/hub_client.dart';
import 'package:cybear_jinni/domain/i_phone_as_hub.dart';
import 'package:network_tools/network_tools.dart';

class PhoneAsHub implements IPhoneAsHub {
  bool phoneAsHub = false;

  @override
  Future dispose() async {
    phoneAsHub = false;
  }

  @override
  Future<Map<String, DeviceEntityAbstract>> get getAllDevices {
    return ISavedDevicesRepo.instance.getAllDevices();
  }

  @override
  Future searchDevices() async {
    CompaniesConnectorConjecture().searchDevicesByBindingIntoSockets();

    final Future<List<ActiveHost>> mdnsDevices =
        CompaniesConnectorConjecture().searchMdnsDevices();
    final Future<List<ActiveHost>> pingableDevices =
        CompaniesConnectorConjecture().searchPingableDevices();

    final List<ActiveHost> mdnsDevicesTemp = await mdnsDevices;
    for (final ActiveHost activeHost in mdnsDevicesTemp) {
      CompaniesConnectorConjecture().setMdnsDeviceByCompany(activeHost);

      final List<ActiveHost> pingableDevicesTemp = await pingableDevices;

      for (final ActiveHost activeHost in pingableDevicesTemp) {
        CompaniesConnectorConjecture().setHostNameDeviceByCompany(
          activeHost: activeHost,
        );
      }
    }
  }

  @override
  void startListen() {
    if (phoneAsHub) {
      return;
    }
    phoneAsHub = true;

    CompaniesConnectorConjecture().updateAllDevicesReposWithDeviceChanges(
      AppRequestsToHub.appRequestsToHubStreamController.stream
          .map((clientStatusRequests) {
        if (!phoneAsHub) {
          return 'phoneAsHub false';
        }
        final dynamic dtosEntity =
            DeviceHelperMethods.clientStatusRequestsToItsDtosType(
          clientStatusRequests,
        );
        if (dtosEntity is DeviceEntityAbstract) {
          dtosEntity.entityStateGRPC =
              EntityState(EntityStateGRPC.waitingInComp.toString());
          return dtosEntity;
        }
        return 'phoneAsHub false';
      }),
    );
  }
}
