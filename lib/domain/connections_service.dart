import 'dart:async';
import 'dart:collection';
import 'dart:io';

import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:cybearjinni/infrastructure/core/injection.dart';
import 'package:cybearjinni/infrastructure/core/logger.dart';
import 'package:cybearjinni/infrastructure/network_utilities_flutter.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:location/location.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:network_tools_flutter/network_tools_flutter.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;
import 'package:rxdart/rxdart.dart';

part 'package:cybearjinni/infrastructure/connection_service/app_connection_service.dart';
part 'package:cybearjinni/infrastructure/connection_service/hub_connection_service.dart';
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
    _instance?.dispose();

    switch (connectionType) {
      case ConnectionType.appAsHub:
        _instance = _AppConnectionService();
        _currentConnectionType = ConnectionType.appAsHub;
      case ConnectionType.hub:
        _currentConnectionType = ConnectionType.hub;
        _instance = _HubConnectionService();
      case ConnectionType.demo:
      case ConnectionType.remotePipes:
        _instance = _DemoConnectionService();
        _currentConnectionType = ConnectionType.demo;
      case ConnectionType.none:
      case null:
        _instance = _NoneConnectionService();
        _currentConnectionType = ConnectionType.none;
    }
  }

  static ConnectionType getCurrentConnectionType() => _currentConnectionType;

  Future<bool> connect();

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

  Future<void> loginVendor(VendorLoginEntity value);

  Future<List<VendorEntityInformation>> getVendors();
}
