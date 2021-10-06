part of 'lifx_sign_in_form_bloc.dart';

@freezed
class LifxSignInFormState with _$LifxSignInFormState {
  const factory LifxSignInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _LifxSignInFormState;

  factory LifxSignInFormState.initial() => LifxSignInFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
