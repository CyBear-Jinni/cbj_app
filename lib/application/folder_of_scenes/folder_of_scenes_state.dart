part of 'folder_of_scenes_bloc.dart';

@freezed
class FolderOfScenesState with _$FolderOfScenesState {
  const factory FolderOfScenesState({
    String? testValue,
  }) = _FolderOfScenesState;

  factory FolderOfScenesState.initialized() => const FolderOfScenesState();

  const factory FolderOfScenesState.loading() = Loading;

  const factory FolderOfScenesState.loaded({
    required KtList<Either<SceneCbjFailure, SceneCbj>> scenesList,
  }) = Loaded;

  const factory FolderOfScenesState.error() = Error;
}
