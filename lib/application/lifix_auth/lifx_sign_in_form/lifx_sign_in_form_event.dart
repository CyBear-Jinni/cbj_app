part of 'lifx_sign_in_form_bloc.dart';

@freezed
class LifxSignInFormEvent with _$LifxSignInFormEvent {
  const factory LifxSignInFormEvent.emailChanged(String emailStr) =
      EmailChanged;

  const factory LifxSignInFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;

  const factory LifxSignInFormEvent.registerWithEmailAndPassword() =
      RegisterWithEmailAndPassword;

  const factory LifxSignInFormEvent.signInWithEmailAndPasswordPassed() =
      SignInWithEmailAndPasswordPassed;

  const factory LifxSignInFormEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
}
