part of 'folder_of_scenes_bloc.dart';

@freezed
class FolderOfScenesEvent with _$FolderOfScenesEvent {
  const factory FolderOfScenesEvent.initialized(
      FolderOfScenes? folderOfScenes) = Initialized;
}
