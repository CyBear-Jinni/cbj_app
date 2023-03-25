part of 'xiaomi_mi_sign_in_form_bloc.dart';

@freezed
class XiaomiMiSignInFormEvent with _$XiaomiMiSignInFormEvent {
  const factory XiaomiMiSignInFormEvent.apiKeyChanged(String apiKeyStr) =
      ApiKeyChanged;

  const factory XiaomiMiSignInFormEvent.signInWithXiaomiMiApiKey() =
      SignInWithXiaomiMiApiKey;
}
