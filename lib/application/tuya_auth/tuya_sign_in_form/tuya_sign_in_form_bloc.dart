import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/vendors/i_vendor_repository.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:cybear_jinni/domain/vendors/tuya_login/generic_tuya_login_entity.dart';
import 'package:cybear_jinni/domain/vendors/tuya_login/generic_tuya_login_value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tuya_sign_in_form_bloc.freezed.dart';
part 'tuya_sign_in_form_event.dart';
part 'tuya_sign_in_form_state.dart';

@injectable
class TuyaSignInFormBloc
    extends Bloc<TuyaSignInFormEvent, TuyaSignInFormState> {
  TuyaSignInFormBloc(this._vendorRepository)
      : super(TuyaSignInFormState.initial());

  final IVendorsRepository _vendorRepository;

  //
  // @override
  // SignInFormState get initialStat`e => SignInFormState.initial();

  @override
  Stream<TuyaSignInFormState> mapEventToState(
    TuyaSignInFormEvent event,
  ) async* {
    yield* event.map(
      signIn: (SignInWithApiKey value) async* {
        final GenericTuyaLoginDE genericTuyaDE = GenericTuyaLoginDE(
          senderUniqueId: CoreLoginSenderId.fromUniqueString('Me'),
          tuyaUserName: GenericTuyaLoginUserName(
            state.tuyaUserName.getOrCrash(),
          ),
          tuyaUserPassword: GenericTuyaLoginUserPassword(
            state.tuyaUserPassword.getOrCrash(),
          ),
          tuyaCountryCode: GenericTuyaLoginCountryCode(
            state.tuyaCountryCode.getOrCrash(),
          ),
          tuyaBizType: GenericTuyaLoginBizType(
            state.tuyaBizType.getOrCrash(),
          ),
          tuyaRegion: GenericTuyaLoginRegion(
            state.tuyaLoginRegion.getOrCrash(),
          ),
        );

        _vendorRepository.loginWithTuya(genericTuyaDE);
      },
      userNameChanged: (UserNameChanged value) async* {
        yield state.copyWith(
          tuyaUserName: GenericTuyaLoginUserName(value.userNameStr),
          authFailureOrSuccessOption: none(),
        );
      },
      userPasswordChanged: (UserPasswordChanged value) async* {
        yield state.copyWith(
          tuyaUserPassword: GenericTuyaLoginUserPassword(value.userPasswordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      countryCodeChanged: (CountryCodeChanged value) async* {
        yield state.copyWith(
          tuyaCountryCode: GenericTuyaLoginCountryCode(value.countryCodeStr),
          authFailureOrSuccessOption: none(),
        );
      },
      bizTypeChanged: (BizTypeChanged value) async* {
        yield state.copyWith(
          tuyaBizType: GenericTuyaLoginBizType(value.bizTypeStr),
          authFailureOrSuccessOption: none(),
        );
      },
      regionChanged: (RegionChanged value) async* {
        yield state.copyWith(
          tuyaLoginRegion: GenericTuyaLoginRegion(value.regionStr),
          authFailureOrSuccessOption: none(),
        );
      },
    );
  }
}
