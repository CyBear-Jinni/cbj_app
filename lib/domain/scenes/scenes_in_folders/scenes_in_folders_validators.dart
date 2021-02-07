import 'package:cybear_jinni/domain/scenes/scenes_in_folders/scenes_in_folders_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

Either<ScenesInFoldersFailures<KtList<T>>, KtList<T>> validateScenesList<T>(
    KtList<T> scenesList) {
  if (scenesList.isNotEmpty()) {
    return right(scenesList);
  } else {
    return left(const ScenesInFoldersFailures.emptyScenesList());
  }
}
