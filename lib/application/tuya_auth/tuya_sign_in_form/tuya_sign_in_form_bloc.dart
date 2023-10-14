import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/domain/vendors/i_vendor_repository.dart';
import 'package:cbj_integrations_controller/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cbj_integrations_controller/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:cbj_integrations_controller/domain/vendors/tuya_login/generic_tuya_login_entity.dart';
import 'package:cbj_integrations_controller/domain/vendors/tuya_login/generic_tuya_login_value_objects.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/utils.dart';
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
      : super(TuyaSignInFormState.initial()) {
    on<SignInWithTuyaApiKey>(_signIn);
    on<VendorChanged>(_vendorChanged);
    on<UserNameChanged>(_userNameChanged);
    on<UserPasswordChanged>(_userPasswordChanged);
    on<CountryCodeChanged>(_countryCodeChanged);
    on<BizTypeChanged>(_bizTypeChanged);
    on<RegionChanged>(_regionChanged);
  }

  final IVendorsRepository _vendorRepository;

  //
  // @override
  // SignInFormState get initialStat`e => SignInFormState.initial();

  Future<void> _signIn(
    SignInWithTuyaApiKey event,
    Emitter<TuyaSignInFormState> emit,
  ) async {
    if (state.tuyaVendor.getOrCrash() ==
        VendorsAndServices.vendorsAndServicesNotSupported.name) {
      logger.e("Tuya vendor type didn't got updated, this should not happen");
      return;
    }
    final GenericTuyaLoginDE genericTuyaDE = GenericTuyaLoginDE(
      senderUniqueId: CoreLoginSenderId.fromUniqueString('Me'),
      loginVendor: CoreLoginVendor(
        state.tuyaVendor.getOrCrash(),
      ),
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
  }

  Future<void> _vendorChanged(
    VendorChanged event,
    Emitter<TuyaSignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        tuyaVendor: CoreLoginVendor(event.loginVendor),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _userNameChanged(
    UserNameChanged event,
    Emitter<TuyaSignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        tuyaUserName: GenericTuyaLoginUserName(event.userNameStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _userPasswordChanged(
    UserPasswordChanged event,
    Emitter<TuyaSignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        tuyaUserPassword: GenericTuyaLoginUserPassword(event.userPasswordStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _countryCodeChanged(
    CountryCodeChanged event,
    Emitter<TuyaSignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        tuyaCountryCode: GenericTuyaLoginCountryCode(event.countryCodeStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _bizTypeChanged(
    BizTypeChanged event,
    Emitter<TuyaSignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        tuyaBizType: GenericTuyaLoginBizType(event.bizTypeStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _regionChanged(
    RegionChanged event,
    Emitter<TuyaSignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        tuyaLoginRegion: GenericTuyaLoginRegion(event.regionStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }
}
