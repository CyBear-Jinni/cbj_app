part of 'lifx_sign_in_form_bloc.dart';

@freezed
class LifxSignInFormState with _$LifxSignInFormState {
  const factory LifxSignInFormState({
    required GenericLifxSwitchState lifxApiKey,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption,
  }) = _LifxSignInFormState;

  factory LifxSignInFormState.initial() => LifxSignInFormState(
        lifxApiKey: GenericLifxSwitchState(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
