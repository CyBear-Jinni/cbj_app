part of 'folder_of_scenes_bloc.dart';

@freezed
abstract class FolderOfScenesState with _$FolderOfScenesState {
  const factory FolderOfScenesState() = _FolderOfScenesState;

  factory FolderOfScenesState.initialized() => const FolderOfScenesState();

  const factory FolderOfScenesState.loading() = Loading;

  const factory FolderOfScenesState.loaded(
      {required KtList<Either<SceneFailure, Scene>> scenesList}) = Loaded;

  const factory FolderOfScenesState.error() = Error;
}
