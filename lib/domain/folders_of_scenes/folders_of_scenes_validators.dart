import 'package:cybear_jinni/domain/folders_of_scenes/folders_of_scenes_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

Either<FoldersOfScenesFailures<KtList<T>>, KtList<T>> validateScenesList<T>(
  KtList<T> scenesList,
) {
  if (scenesList.isNotEmpty()) {
    return right(scenesList);
  } else {
    return left(const FoldersOfScenesFailures.emptyScenesList());
  }
}
