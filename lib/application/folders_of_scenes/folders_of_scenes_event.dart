part of 'folders_of_scenes_bloc.dart';

@freezed
abstract class FoldersOfScenesEvent with _$FoldersOfScenesEvent {
  const factory FoldersOfScenesEvent.initialized() = Initialized;
}
