part of 'package:cybearjinni/domain/connections_service.dart';

class _AppConnectionService implements ConnectionsService {
  _AppConnectionService() {
    searchDevicesInstance = SearchDevices();
    searchDevices();
  }

  late SearchDevices searchDevicesInstance;

  @override
  Future<HashMap<String, DeviceEntityBase>> get getAllEntities async =>
      DevicesService().getEntities();

  @override
  Future searchDevices() =>
      searchDevicesInstance.startSearchIsolate(NetworkUtilitiesFlutter());

  @override
  Stream<MapEntry<String, DeviceEntityBase>> watchEntities() =>
      DevicesService().watchEntities();

  @override
  void setEntityState({
    required HashMap<VendorsAndServices, HashSet<String>> uniqueIdByVendor,
    required EntityProperties property,
    required EntityActions actionType,
    HashMap<ActionValues, dynamic>? value,
  }) =>
      DevicesService().setEntityState(
        uniqueIdByVendor: uniqueIdByVendor,
        action: actionType,
        property: property,
        value: value,
      );

  @override
  Future dispose() async => searchDevicesInstance.dispose();
}
