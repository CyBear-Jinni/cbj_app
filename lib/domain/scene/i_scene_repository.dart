import 'package:cybear_jinni/domain/scene/scene.dart';
import 'package:cybear_jinni/domain/scene/scene_failures.dart';
import 'package:dartz/dartz.dart';

abstract class ISceneRepository {
  Future<Either<SceneFailure, Scene>> getScene();
}
