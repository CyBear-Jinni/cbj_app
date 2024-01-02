part of 'package:cybearjinni/domain/connections_service.dart';

class _AppConnectionService implements ConnectionsService {
  _AppConnectionService() {
    searchDevicesInstance = SearchDevices();
    searchDevices();
  }

  late SearchDevices searchDevicesInstance;

  @override
  Future<HashMap<String, DeviceEntityBase>> get getAllEntities async =>
      EntitiesService().getEntities();

  @override
  Future searchDevices() =>
      searchDevicesInstance.startSearchIsolate(NetworkUtilitiesFlutter());

  @override
  Stream<MapEntry<String, DeviceEntityBase>> watchEntities() =>
      EntitiesService().watchEntities();

  @override
  void setEntityState({
    required HashMap<VendorsAndServices, HashSet<String>> uniqueIdByVendor,
    required EntityProperties property,
    required EntityActions actionType,
    HashMap<ActionValues, dynamic>? value,
  }) =>
      EntitiesService().setEntityState(
        uniqueIdByVendor: uniqueIdByVendor,
        action: actionType,
        property: property,
        value: value,
      );

  @override
  Future dispose() async => searchDevicesInstance.dispose();
}
