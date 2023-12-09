part of 'package:cybear_jinni/domain/i_phone_as_hub.dart';

class _PhoneAsHubRepository implements IPhoneAsHub {
  bool phoneAsHub = false;

  @override
  Future dispose() async {
    phoneAsHub = false;
  }

  @override
  Future<Map<String, DeviceEntityAbstract>> get getAllDevices {
    return ISavedDevicesRepo.instance.getAllDevicesAfterInitialize();
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

    AppRequestsToHub.appRequestsToHubStreamController.stream
        .listen((clientStatusRequests) {
      if (!phoneAsHub) {
        logger.i('Phone as a hub should be canceled');
        return;
      }
      DeviceHelperMethods().handleClientStatusRequests(clientStatusRequests);
    });
  }
}
