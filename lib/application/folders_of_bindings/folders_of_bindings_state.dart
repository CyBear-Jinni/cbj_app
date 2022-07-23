part of 'folders_of_bindings_bloc.dart';

@freezed
class FoldersOfBindingsState with _$FoldersOfBindingsState {
  const factory FoldersOfBindingsState({
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _FoldersOfBindingsState;

  factory FoldersOfBindingsState.initialized() => FoldersOfBindingsState(
        authFailureOrSuccessOption: none(),
      );

  const factory FoldersOfBindingsState.loading() = Loading;

  const factory FoldersOfBindingsState.loaded(
    List<RoomEntity> foldersOfBindings,
  ) = Loaded;

  const factory FoldersOfBindingsState.loadedEmpty() = LoadedEmpty;

  const factory FoldersOfBindingsState.error() = Error;
}
