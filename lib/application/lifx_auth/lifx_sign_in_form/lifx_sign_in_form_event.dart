part of 'lifx_sign_in_form_bloc.dart';

@freezed
class LifxSignInFormEvent with _$LifxSignInFormEvent {
  const factory LifxSignInFormEvent.apiKeyChanged(String apiKeyStr) =
      ApiKeyChanged;

  const factory LifxSignInFormEvent.signInWithApiKey() = SignInWithApiKey;
}
