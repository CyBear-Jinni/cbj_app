part of 'esphome_sign_in_form_bloc.dart';

@freezed
class EspHomeSignInFormState with _$EspHomeSignInFormState {
  const factory EspHomeSignInFormState({
    required GenericEspHomeDeviceLoginApiPass espHomeDevicePassword,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption,
  }) = _EspHomeSignInFormState;

  factory EspHomeSignInFormState.initial() => EspHomeSignInFormState(
        espHomeDevicePassword: GenericEspHomeDeviceLoginApiPass(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
