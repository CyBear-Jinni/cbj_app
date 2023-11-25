part of 'ewelink_sign_in_form_bloc.dart';

@freezed
class EwelinkSignInFormEvent with _$EwelinkSignInFormEvent {
  const factory EwelinkSignInFormEvent.ewelinkAccountEmailChange(
    String email,
  ) = EwelinkAccountEmailChange;

  const factory EwelinkSignInFormEvent.ewelinkAccountPassChange(String pass) =
      EwelinkAccountPassChange;

  const factory EwelinkSignInFormEvent.signInWithEwelink() = SignInWithEwelink;
}
