import 'package:cybear_jinni/domain/folder_of_scenes/folder_of_scene.dart';
import 'package:cybear_jinni/domain/folder_of_scenes/folder_of_scenes_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'folders_of_scenes.freezed.dart';

@freezed
abstract class FoldersOfScenes with _$FoldersOfScenes {
  const factory FoldersOfScenes({
    required KtList<Either<FolderOfScenesFailures, FolderOfScenes>>
        foldersOfScenesList,
  }) = _FoldersOfScenes;

  const FoldersOfScenes._();
}
