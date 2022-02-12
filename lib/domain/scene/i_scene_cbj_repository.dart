import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

abstract class ISceneCbjRepository {
  Future<Either<SceneCbjFailure, KtList<SceneCbj>>> getAllScenes();

  Stream<Either<SceneCbjFailure, KtList<SceneCbj>>> watchAllScenes();

  Future<Either<SceneCbjFailure, SceneCbj>> getScene();

  /// Sending the new scene to the hub to get added
  Future<Either<SceneCbjFailure, SceneCbj>> addOrUpdateNewSceneInHub(
    String sceneName,
    List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        smartDevicesWithActionToAdd,
  );

  /// Sending the new scene from the hub to the app scene list
  void addOrUpdateNewSceneInApp(
    SceneCbj sceneCbj,
  );

  Future<void> initiateHubConnection();

  BehaviorSubject<KtList<SceneCbj>> scenesResponseFromTheHubStreamController =
      BehaviorSubject<KtList<SceneCbj>>();
}
