import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/folders_of_scenes/folders_of_scenes_failures.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IFolderOfScenesRepository {
  Future<
      Either<FoldersOfScenesFailures,
          KtList<Either<SceneCbjFailure, SceneCbj>>>> getAllScenesInFolder({
    required UniqueId uniqueId,
  });
}
