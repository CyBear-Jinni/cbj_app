import 'package:cybear_jinni/domain/folder_of_scenes/i_folder_of_scenes_repository.dart';
import 'package:cybear_jinni/domain/folders_of_scenes/folders_of_scenes_failures.dart';
import 'package:cybear_jinni/domain/scene/scene.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';

@LazySingleton(as: IFolderOfScenesRepository)
class FolderOfScenesRepository implements IFolderOfScenesRepository {
  @override
  Future<Either<FoldersOfScenesFailures, KtList<Scene>>>
      getAllScenesInFolder() {
    return null;
  }
}
