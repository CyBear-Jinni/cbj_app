part of 'folder_of_routines_bloc.dart';

@freezed
class FolderOfRoutinesState with _$FolderOfRoutinesState {
  const factory FolderOfRoutinesState({
    String? testValue,
  }) = _FolderOfRoutinesState;

  factory FolderOfRoutinesState.initialized() => const FolderOfRoutinesState();

  // factory FolderOfRoutinesState.initialized({
  //   required RoomEntity roomEntity,
  // }) = FolderOfRoutinesState;

  const factory FolderOfRoutinesState.loading() = Loading;

  const factory FolderOfRoutinesState.loaded({
    required List<RoutineCbjEntity> routinesList,
  }) = Loaded;

  const factory FolderOfRoutinesState.loadedEmptyScens() = LoadedEmptyScens;

  const factory FolderOfRoutinesState.error() = Error;
}
