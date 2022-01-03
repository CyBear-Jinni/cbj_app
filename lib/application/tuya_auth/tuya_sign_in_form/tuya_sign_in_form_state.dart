part of 'tuya_sign_in_form_bloc.dart';

@freezed
class TuyaSignInFormState with _$TuyaSignInFormState {
  const factory TuyaSignInFormState({
    required CoreLoginVendor tuyaVendor,
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
        tuyaVendor: CoreLoginVendor(
          VendorsAndServices.vendorsAndServicesNotSupported.name,
        ),
        tuyaUserName: GenericTuyaLoginUserName(''),
        tuyaUserPassword: GenericTuyaLoginUserPassword(''),
        tuyaCountryCode: GenericTuyaLoginCountryCode(''),
        tuyaBizType: GenericTuyaLoginBizType('tuya'),
        tuyaLoginRegion: GenericTuyaLoginRegion('eu'),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
