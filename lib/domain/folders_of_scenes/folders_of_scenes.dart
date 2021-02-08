import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../folder_of_scenes/folder_of_scene.dart';

part 'folders_of_scenes.freezed.dart';

@freezed
abstract class FoldersOfScenes with _$FoldersOfScenes {
  const FoldersOfScenes._();

  const factory FoldersOfScenes({
    @required KtList<FolderOfScenes> foldersOfScenesList,
  }) = _FoldersOfScenes;
}
