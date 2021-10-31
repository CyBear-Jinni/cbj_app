part of 'lifx_sign_in_form_bloc.dart';

@freezed
class LifxSignInFormState with _$LifxSignInFormState {
  const factory LifxSignInFormState({
    required GenericLifxLoginApiKey lifxApiKey,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption,
  }) = _LifxSignInFormState;

  factory LifxSignInFormState.initial() => LifxSignInFormState(
        lifxApiKey: GenericLifxLoginApiKey(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
