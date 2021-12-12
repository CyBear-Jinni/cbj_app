part of 'tuya_sign_in_form_bloc.dart';

@freezed
class TuyaSignInFormEvent with _$TuyaSignInFormEvent {
  const factory TuyaSignInFormEvent.vendorChanged(String loginVendor) =
      VendorChanged;

  const factory TuyaSignInFormEvent.userNameChanged(String userNameStr) =
      UserNameChanged;

  const factory TuyaSignInFormEvent.userPasswordChanged(
    String userPasswordStr,
  ) = UserPasswordChanged;

  const factory TuyaSignInFormEvent.countryCodeChanged(String countryCodeStr) =
      CountryCodeChanged;

  const factory TuyaSignInFormEvent.bizTypeChanged(String bizTypeStr) =
  BizTypeChanged;

  const factory TuyaSignInFormEvent.regionChanged(String? regionStr) =
  RegionChanged;

  const factory TuyaSignInFormEvent.signIn() = SignInWithApiKey;
}
