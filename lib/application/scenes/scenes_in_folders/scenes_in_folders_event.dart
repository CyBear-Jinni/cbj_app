part of 'scenes_in_folders_bloc.dart';

@freezed
abstract class ScenesInFoldersEvent with _$ScenesInFoldersEvent {
  const factory ScenesInFoldersEvent.initialized() = Initialized;
}
