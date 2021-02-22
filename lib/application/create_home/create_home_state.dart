part of 'create_home_bloc.dart';

@freezed
abstract class CreateHomeState with _$CreateHomeState {
  const factory CreateHomeState({
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _CreateHomeState;

  factory CreateHomeState.initialized() => CreateHomeState(
        authFailureOrSuccessOption: none(),
      );

  const factory CreateHomeState.loading() = Loading;

  const factory CreateHomeState.loaded() = Loaded;

  const factory CreateHomeState.error() = Error;
}
