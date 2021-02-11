part of 'folders_of_scenes_bloc.dart';

@freezed
abstract class FoldersOfScenesState with _$FoldersOfScenesState {
  const factory FoldersOfScenesState({
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _FoldersOfScenesState;

  factory FoldersOfScenesState.initialized() => FoldersOfScenesState(
        authFailureOrSuccessOption: none(),
      );

  const factory FoldersOfScenesState.loading() = Loading;

  const factory FoldersOfScenesState.loaded(FoldersOfScenes foldersOfScenes) =
      Loaded;

  const factory FoldersOfScenesState.error() = Error;
}
