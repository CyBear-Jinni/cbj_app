part of 'join_home_by_id_bloc.dart';

@freezed
class JoinHomeByIdState with _$JoinHomeByIdState {
  const factory JoinHomeByIdState({
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _JoinHomeByIdState;

  factory JoinHomeByIdState.initialized() => JoinHomeByIdState(
        authFailureOrSuccessOption: none(),
      );

  const factory JoinHomeByIdState.loading() = Loading;

  const factory JoinHomeByIdState.loaded() = Loaded;

  const factory JoinHomeByIdState.error() = Error;
}
