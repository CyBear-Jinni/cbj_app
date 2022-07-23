part of 'folder_of_bindings_bloc.dart';

@freezed
class FolderOfBindingsEvent with _$FolderOfBindingsEvent {
  const factory FolderOfBindingsEvent.initialized({
    required RoomEntity folderOfBindings,
  }) = Initialized;
}
