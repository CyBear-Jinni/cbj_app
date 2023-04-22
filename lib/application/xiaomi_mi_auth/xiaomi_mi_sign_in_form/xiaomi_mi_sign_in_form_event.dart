part of 'xiaomi_mi_sign_in_form_bloc.dart';

@freezed
class XiaomiMiSignInFormEvent with _$XiaomiMiSignInFormEvent {
  const factory XiaomiMiSignInFormEvent.xiaomiMiAccountEmailChange(
    String email,
  ) = XiaomiMiAccountEmailChange;

  const factory XiaomiMiSignInFormEvent.xiaomiMiAccountPassChange(String pass) =
      XiaomiMiAccountPassChange;

  const factory XiaomiMiSignInFormEvent.signInWithXiaoMi() = SignInWithXiaoMi;
}
