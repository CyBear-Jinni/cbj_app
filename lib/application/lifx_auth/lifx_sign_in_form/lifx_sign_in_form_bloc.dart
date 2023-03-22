import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/vendors/i_vendor_repository.dart';
import 'package:cybear_jinni/domain/vendors/lifx_login/generic_lifx_login_entity.dart';
import 'package:cybear_jinni/domain/vendors/lifx_login/generic_lifx_login_value_objects.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'lifx_sign_in_form_bloc.freezed.dart';
part 'lifx_sign_in_form_event.dart';
part 'lifx_sign_in_form_state.dart';

@injectable
class LifxSignInFormBloc
    extends Bloc<LifxSignInFormEvent, LifxSignInFormState> {
  LifxSignInFormBloc(this._vendorRepository)
      : super(LifxSignInFormState.initial()) {
    on<ApiKeyChanged>(_apiKeyChanged);
    on<SignInWithLifxApiKey>(_signInWithApiKey);
  }

  final IVendorsRepository _vendorRepository;

  //
  // @override
  // SignInFormState get initialStat`e => SignInFormState.initial();

  Future<void> _apiKeyChanged(
    ApiKeyChanged event,
    Emitter<LifxSignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        lifxApiKey: GenericLifxLoginApiKey(event.apiKeyStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _signInWithApiKey(
    SignInWithLifxApiKey event,
    Emitter<LifxSignInFormState> emit,
  ) async {
    final GenericLifxLoginDE genericLifxDE = GenericLifxLoginDE(
      senderUniqueId: CoreLoginSenderId.fromUniqueString('Me'),
      lifxApiKey: GenericLifxLoginApiKey(state.lifxApiKey.getOrCrash()),
    );
    _vendorRepository.loginWithLifx(genericLifxDE);
    //   emit(* _performActionOnAuthFacadeWithEmailAndPassword(
    //     _authFacade.registerWithEmailAndPassword,
  }
}
