import 'package:freezed_annotation/freezed_annotation.dart';

part 'folders_of_scenes_failures.freezed.dart';

@freezed
class FoldersOfScenesFailures<T> with _$FoldersOfScenesFailures {
  const factory FoldersOfScenesFailures.emptyScenesList() = _EmptyScenes;

  const factory FoldersOfScenesFailures.unexpected() = _Unexpected;
}
