part of 'ewelink_sign_in_form_bloc.dart';

@freezed
class EwelinkSignInFormState with _$EwelinkSignInFormState {
  const factory EwelinkSignInFormState({
    required GenericEwelinkAccountEmail ewelinkAccountEmail,
    required GenericEwelinkAccountPass ewelinkAccountPass,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption,
  }) = _EwelinkSignInFormState;

  factory EwelinkSignInFormState.initial() => EwelinkSignInFormState(
        ewelinkAccountEmail: GenericEwelinkAccountEmail(''),
        ewelinkAccountPass: GenericEwelinkAccountPass(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
