import 'package:freezed_annotation/freezed_annotation.dart';

part 'folder_of_scenes_failures.freezed.dart';

@freezed
abstract class FolderOfScenesFailures<T> with _$FolderOfScenesFailures {
  const factory FolderOfScenesFailures.emptyScenesList() = _EmptyScenes;

  const factory FolderOfScenesFailures.unexpected() = _Unexpected;
}
