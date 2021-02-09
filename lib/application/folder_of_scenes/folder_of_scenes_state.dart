part of 'folder_of_scenes_bloc.dart';

@freezed
abstract class FolderOfScenesState with _$FolderOfScenesState {
  const factory FolderOfScenesState() = _FolderOfScenesState;

  factory FolderOfScenesState.initialized() => FolderOfScenesState();

  const factory FolderOfScenesState.loading() = Loading;

  const factory FolderOfScenesState.loaded() = Loaded;

  const factory FolderOfScenesState.error() = Error;
}
