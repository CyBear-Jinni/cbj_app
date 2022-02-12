import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/folder_of_scenes/i_folder_of_scenes_repository.dart';
import 'package:cybear_jinni/domain/folders_of_scenes/folders_of_scenes_failures.dart';
import 'package:cybear_jinni/domain/scene/i_scene_cbj_repository.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj_failures.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IFolderOfScenesRepository)
class FolderOfScenesRepository implements IFolderOfScenesRepository {
  @override
  Future<Either<FoldersOfScenesFailures, KtList<SceneCbj>>>
      getAllScenesInFolder({
    UniqueId? uniqueId,
  }) async {
    // Either<FoldersOfScenesFailures, KtList<Either<SceneFailure, SceneCbj>>

    final Either<SceneCbjFailure, KtList<SceneCbj>> allScenes =
        await getIt<ISceneCbjRepository>().getAllScenes();
    return allScenes.fold(
      (l) => left(const FoldersOfScenesFailures.unexpected()),
      (listOfScenes) => right(listOfScenes),
    );
  }

  KtList<Either<SceneCbjFailure, SceneCbj>> scenesListMoc() {
    return <Either<SceneCbjFailure, SceneCbj>>[
      right(
        SceneCbj(
          uniqueId: UniqueId(),
          name: 'Entrance lights OFF\n-----------\n  ⛩️  🛑',
          backgroundColor: HexColor('#E9D7FF').value,
        ),
      ),
      right(
        SceneCbj(
          uniqueId: UniqueId(),
          name: 'Entrance lights ON\n-----------\n   ⛩️  💡',
          backgroundColor: Colors.lightBlueAccent.value,
        ),
      ),
      right(
        SceneCbj(
          uniqueId: UniqueId(),
          name: 'Go to sleep\n-----------\n 😴',
          backgroundColor: Colors.greenAccent.value,
        ),
      ),
      right(
        SceneCbj(
          uniqueId: UniqueId(),
          name: 'Welcome home',
          backgroundColor: HexColor('#DAEEFF').value,
        ),
      ),
      right(
        SceneCbj(
          uniqueId: UniqueId(),
          name: 'Going out',
          backgroundColor: HexColor('#FFD6CF').value,
        ),
      ),
      right(
        SceneCbj(
          uniqueId: UniqueId(),
          name: 'Going for a walk',
          backgroundColor: HexColor('#FEDE7A').value,
        ),
      ),
      right(
        SceneCbj(
          uniqueId: UniqueId(),
          name: 'Workout',
          backgroundColor: Colors.blue.value,
        ),
      ),
      right(
        SceneCbj(
          uniqueId: UniqueId(),
          name: 'Date night',
          backgroundColor: Colors.pinkAccent.value,
        ),
      ),
      right(
        SceneCbj(
          uniqueId: UniqueId(),
          name: 'Party',
          backgroundColor: Colors.blueGrey.value,
        ),
      ),
    ].toImmutableList();
  }
}
