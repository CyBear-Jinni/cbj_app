part of 'initialize_home_bloc.dart';

@freezed
abstract class InitializeHomeState with _$InitializeHomeState {
  const factory InitializeHomeState({
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _InitializeHomeState;

  factory InitializeHomeState.initialized() => InitializeHomeState(
        authFailureOrSuccessOption: none(),
      );

  const factory InitializeHomeState.loading() = Loading;

  const factory InitializeHomeState.loaded() = Loaded;

  const factory InitializeHomeState.error() = Error;
}
