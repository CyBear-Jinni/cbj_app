part of 'lifx_sign_in_form_bloc.dart';

@freezed
class LifxSignInFormState with _$LifxSignInFormState {
  const factory LifxSignInFormState({
    required GenericLifxApiKey lifxApiKey,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption,
  }) = _LifxSignInFormState;

  factory LifxSignInFormState.initial() => LifxSignInFormState(
        lifxApiKey: GenericLifxApiKey(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
