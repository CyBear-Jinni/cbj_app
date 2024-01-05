import 'dart:async';
import 'dart:collection';

import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/infrastructure/network_utilities_flutter.dart';

part 'package:cybearjinni/infrastructure/connection_service/app_connection_service.dart';
part 'package:cybearjinni/infrastructure/connection_service/demo_connection_service.dart';
part 'package:cybearjinni/infrastructure/connection_service/none_connection_service.dart';

enum ConnectionType {
  appAsHub,
  hub,
  remotePipes,
  demo,
  none,
  ;
}

abstract interface class ConnectionsService {
  static ConnectionsService? _instance;

  static ConnectionsService get instance {
    return _instance ??= _AppConnectionService();
  }

  static ConnectionType _currentConnectionType = ConnectionType.appAsHub;

  static void setCurrentConnectionType(ConnectionType? connectionType) {
    if (connectionType == _currentConnectionType) {
      return;
    }
    final ConnectionsService? oldInstance = _instance;
    switch (connectionType) {
      case ConnectionType.appAsHub:
        _instance = _AppConnectionService();
        _currentConnectionType = ConnectionType.appAsHub;
      case ConnectionType.demo:
      case ConnectionType.hub:
      case ConnectionType.remotePipes:
        _instance = _DemoConnectionService();
        _currentConnectionType = ConnectionType.demo;
      case ConnectionType.none:
      case null:
        _instance = _NoneConnectionService();
        _currentConnectionType = ConnectionType.none;
    }
    oldInstance?.dispose();
  }

  static ConnectionType getCurrentConnectionType() => _currentConnectionType;

  Future searchDevices();

  void setEntityState(ActionObject action);

  Future setEtitiesToArea(String areaId, HashSet<String> entities);

  Future<HashMap<String, DeviceEntityBase>> get getAllEntities;

  Future<HashMap<String, AreaEntity>> get getAllAreas;

  Stream<MapEntry<String, DeviceEntityBase>> watchEntities();

  Stream<MapEntry<String, AreaEntity>> watchAreas();

  Future dispose();

  Future setNewArea(AreaEntity area);

  Future<HashMap<String, SceneCbjEntity>> getScenes();

  Future activateScene(String id);

  Future addScene(SceneCbjEntity scene);
}
