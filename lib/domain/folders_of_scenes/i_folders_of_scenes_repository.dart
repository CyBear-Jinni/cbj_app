import 'package:cybear_jinni/domain/folders_of_scenes/folders_of_scenes.dart';
import 'package:cybear_jinni/domain/folders_of_scenes/folders_of_scenes_failures.dart';
import 'package:dartz/dartz.dart';

abstract class IFoldersOfScenesRepository {
  Future<Either<FoldersOfScenesFailures, FoldersOfScenes>>
      getAllRoomsWithScenes();
}
