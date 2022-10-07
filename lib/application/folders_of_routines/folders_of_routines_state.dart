part of 'folders_of_routines_bloc.dart';

@freezed
class FoldersOfRoutinesState with _$FoldersOfRoutinesState {
  const factory FoldersOfRoutinesState({
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _FoldersOfRoutinesState;

  factory FoldersOfRoutinesState.initialized() => FoldersOfRoutinesState(
        authFailureOrSuccessOption: none(),
      );

  const factory FoldersOfRoutinesState.loading() = Loading;

  const factory FoldersOfRoutinesState.loaded(
    List<RoomEntity> foldersOfRoutines,
  ) = Loaded;

  const factory FoldersOfRoutinesState.loadedEmpty() = LoadedEmpty;

  const factory FoldersOfRoutinesState.error() = Error;
}
