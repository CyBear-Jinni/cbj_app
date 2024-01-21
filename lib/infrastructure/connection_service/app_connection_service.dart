part of 'package:cybearjinni/domain/connections_service.dart';

class _AppConnectionService implements ConnectionsService {
  _AppConnectionService() {
    searchDevicesInstance = SearchDevices();
    searchDevices();
  }

  late SearchDevices searchDevicesInstance;

  @override
  Future<HashMap<String, DeviceEntityBase>> get getEntities async =>
      IcSynchronizer().getEntities();

  @override
  Future<HashMap<String, AreaEntity>> get getAreas async =>
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
  void setEntityState(RequestActionObject action) =>
      IcSynchronizer().setEntitiesState(action);

  @override
  Future dispose() async => searchDevicesInstance.dispose();

  @override
  Future setNewArea(AreaEntity area) async {
    IcSynchronizer().setNewArea(area);
  }

  @override
  Future setEtitiesToArea(String areaId, HashSet<String> entities) =>
      IcSynchronizer().setEtitiesToArea(areaId, entities);

  @override
  Future<HashMap<String, SceneCbjEntity>> get getScenes async =>
      IcSynchronizer().getScenes();

  @override
  Future activateScene(String id) => IcSynchronizer().activateScene(id);

  @override
  Future addScene(SceneCbjEntity scene) => IcSynchronizer().addScene(scene);

  @override
  Future loginVendor(VendorLoginEntity value) async =>
      IcSynchronizer().loginVendor(value);

  @override
  Future<List<VendorEntityInformation>> getVendors() async =>
      IcSynchronizer().getVendors();

  @override
  Future<bool> connect({String? address}) async => true;
}
