part of 'scenes_in_folders_bloc.dart';

@freezed
abstract class ScenesInFoldersState with _$ScenesInFoldersState {
  const factory ScenesInFoldersState({
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _ScenesInFoldersState;

  factory ScenesInFoldersState.initialized() => ScenesInFoldersState(
        authFailureOrSuccessOption: none(),
      );

  const factory ScenesInFoldersState.loading() = Loading;

  const factory ScenesInFoldersState.loaded(KtList<String> scenesFolders) =
      Loaded;

  const factory ScenesInFoldersState.error() = Error;
}
