import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/vendors/esphome_login/generic_esphome_login_entity.dart';
import 'package:cybear_jinni/domain/vendors/esphome_login/generic_esphome_login_value_objects.dart';
import 'package:cybear_jinni/domain/vendors/i_vendor_repository.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'esphome_sign_in_form_bloc.freezed.dart';
part 'esphome_sign_in_form_event.dart';
part 'esphome_sign_in_form_state.dart';

@injectable
class EspHomeSignInFormBloc
    extends Bloc<EspHomeSignInFormEvent, EspHomeSignInFormState> {
  EspHomeSignInFormBloc(this._vendorRepository)
      : super(EspHomeSignInFormState.initial()) {
    on<ApiKeyChanged>(_apiKeyChanged);
    on<SignInWithEspHomeApiKey>(_signInWithApiKey);
  }

  final IVendorsRepository _vendorRepository;

  //
  // @override
  // SignInFormState get initialStat`e => SignInFormState.initial();

  Future<void> _apiKeyChanged(
    ApiKeyChanged event,
    Emitter<EspHomeSignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        espHomeDevicePassword:
            GenericEspHomeDeviceLoginApiPass(event.apiKeyStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _signInWithApiKey(
    SignInWithEspHomeApiKey event,
    Emitter<EspHomeSignInFormState> emit,
  ) async {
    final GenericEspHomeLoginDE genericEspHomeDE = GenericEspHomeLoginDE(
      senderUniqueId: CoreLoginSenderId.fromUniqueString('Me'),
      espHomeDevicePass: GenericEspHomeDeviceLoginApiPass(
          state.espHomeDevicePassword.getOrCrash()),
    );
    _vendorRepository.loginWithEspHome(genericEspHomeDE);
    //   emit(* _performActionOnAuthFacadeWithEmailAndPassword(
    //     _authFacade.registerWithEmailAndPassword,
  }
}
