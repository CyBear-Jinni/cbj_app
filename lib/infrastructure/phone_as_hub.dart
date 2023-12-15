part of 'package:cybear_jinni/domain/i_phone_as_hub.dart';

class _PhoneAsHubRepository implements IPhoneAsHub {
  bool phoneAsHub = false;

  @override
  Future dispose() async {
    phoneAsHub = false;
  }

  @override
  Future<Map<String, DeviceEntityAbstract>> get getAllEntities async {
    return DevicesService().getEntities();
  }

  @override
  Future searchDevices() async {
    SearchDevices().startSearch();
  }

  @override
  void startListen() {
    if (phoneAsHub) {
      return;
    }
    phoneAsHub = true;

    // AppRequestsToHub.appRequestsToHubStreamController.stream
    //     .listen((clientStatusRequests) {
    //   if (!phoneAsHub) {
    //     logger.i('Phone as a hub should be canceled');
    //     return;
    //   }
    //   DeviceHelperMethods().handleClientStatusRequests(clientStatusRequests);
    // });
  }

  @override
  void setEntityState({
    required String cbjUniqeId,
    required VendorsAndServices vendor,
    required EntityProperties property,
    required EntityActions actionType,
    dynamic value,
  }) =>
      DevicesService().setEntityState(
        cbjUniqeId: cbjUniqeId,
        vendor: vendor,
        action: actionType,
        property: property,
        value: value,
      );
}
