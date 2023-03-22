part of 'esphome_sign_in_form_bloc.dart';

@freezed
class EspHomeSignInFormEvent with _$EspHomeSignInFormEvent {
  const factory EspHomeSignInFormEvent.apiKeyChanged(String apiKeyStr) =
      ApiKeyChanged;

  const factory EspHomeSignInFormEvent.signInWithEspHomeApiKey() =
  SignInWithEspHomeApiKey;
}
