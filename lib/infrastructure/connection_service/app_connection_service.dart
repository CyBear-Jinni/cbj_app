part of 'package:cybearjinni/domain/connections_service.dart';

class _AppConnectionService implements ConnectionsService {
  _AppConnectionService() {
    searchDevicesInstance = SearchDevices();
    searchDevices();
  }

  late SearchDevices searchDevicesInstance;

  @override
  Future<HashMap<String, DeviceEntityBase>> get getAllEntities async =>
      IcSynchronizer().getEntities();

  @override
  Future<HashMap<String, AreaEntity>> get getAllAreas async =>
      IcSynchronizer().getAreas();

  @override
  Future searchDevices() =>
      searchDevicesInstance.startSearchIsolate(NetworkUtilitiesFlutter());

  @override
  Stream<MapEntry<String, DeviceEntityBase>> watchEntities() =>
      IcSynchronizer().entitiesChangesStream.stream;

  @override
  Stream<MapEntry<String, AreaEntity>> watchAreas() =>
      IcSynchronizer().areasChangesStream.stream;

  @override
  void setEntityState({
    required HashMap<VendorsAndServices, HashSet<String>> uniqueIdByVendor,
    required EntityProperties property,
    required EntityActions actionType,
    HashMap<ActionValues, dynamic>? value,
  }) =>
      IcSynchronizer().setEntityState(
        uniqueIdByVendor: uniqueIdByVendor,
        action: actionType,
        property: property,
        value: value,
      );

  @override
  Future dispose() async => searchDevicesInstance.dispose();

  @override
  Future setNewArea(AreaEntity area) async {
    IcSynchronizer().setNewArea(area);
  }

  @override
  Future setEtitiesToArea(String areaId, HashSet<String> entities) =>
      IcSynchronizer().setEtitiesToArea(areaId, entities);
}
