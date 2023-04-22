part of 'xiaomi_mi_sign_in_form_bloc.dart';

@freezed
class XiaomiMiSignInFormState with _$XiaomiMiSignInFormState {
  const factory XiaomiMiSignInFormState({
    required GenericXiaomiMiAccountEmail xiaomiMiAccountEmail,
    required GenericXiaomiMiAccountPass xiaomiMiAccountPass,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption,
  }) = _XiaomiMiSignInFormState;

  factory XiaomiMiSignInFormState.initial() => XiaomiMiSignInFormState(
        xiaomiMiAccountEmail: GenericXiaomiMiAccountEmail(''),
        xiaomiMiAccountPass: GenericXiaomiMiAccountPass(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
