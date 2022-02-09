import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/scene/scene.dart';
import 'package:cybear_jinni/domain/scene/scene_failures.dart';
import 'package:dartz/dartz.dart';

abstract class ISceneRepository {
  Future<Either<SceneFailure, Scene>> getScene();

  /// Sending the new scene to the hub to get added
  Future<Either<SceneFailure, Scene>> addNewScene(
    String sceneName,
    List<MapEntry<DeviceEntityAbstract, MapEntry<String?, String?>>>
        smartDevicesWithActionToAdd,
  );
}
