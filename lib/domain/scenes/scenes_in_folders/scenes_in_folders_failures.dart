import 'package:freezed_annotation/freezed_annotation.dart';

part 'scenes_in_folders_failures.freezed.dart';

@freezed
abstract class ScenesInFoldersFailures<T> with _$ScenesInFoldersFailures {
  const factory ScenesInFoldersFailures.emptyScenesList() = _EmptyScenes;
}
