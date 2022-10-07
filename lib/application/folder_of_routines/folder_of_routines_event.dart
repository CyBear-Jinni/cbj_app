part of 'folder_of_routines_bloc.dart';

@freezed
class FolderOfRoutinesEvent with _$FolderOfRoutinesEvent {
  const factory FolderOfRoutinesEvent.initialized({
    required RoomEntity folderOfRoutines,
  }) = Initialized;
}
