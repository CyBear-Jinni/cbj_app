part of 'tuya_sign_in_form_bloc.dart';

@freezed
class TuyaSignInFormState with _$TuyaSignInFormState {
  const factory TuyaSignInFormState({
    required GenericTuyaLoginUserName tuyaUserName,
    required GenericTuyaLoginUserPassword tuyaUserPassword,
    required GenericTuyaLoginCountryCode tuyaCountryCode,
    required GenericTuyaLoginBizType tuyaBizType,
    required GenericTuyaLoginRegion tuyaLoginRegion,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption,
  }) = _TuyaSignInFormState;

  factory TuyaSignInFormState.initial() => TuyaSignInFormState(
        tuyaUserName: GenericTuyaLoginUserName(''),
        tuyaUserPassword: GenericTuyaLoginUserPassword(''),
        tuyaCountryCode: GenericTuyaLoginCountryCode(''),
        tuyaBizType: GenericTuyaLoginBizType(''),
        tuyaLoginRegion: GenericTuyaLoginRegion(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
