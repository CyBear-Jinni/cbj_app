import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/vendors/ewelink_login/generic_ewelink_login_entity.dart';
import 'package:cybear_jinni/domain/vendors/ewelink_login/generic_ewelink_login_value_objects.dart';
import 'package:cybear_jinni/domain/vendors/i_vendor_repository.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'ewelink_sign_in_form_bloc.freezed.dart';
part 'ewelink_sign_in_form_event.dart';
part 'ewelink_sign_in_form_state.dart';

@injectable
class EwelinkSignInFormBloc
    extends Bloc<EwelinkSignInFormEvent, EwelinkSignInFormState> {
  EwelinkSignInFormBloc(this._vendorRepository)
      : super(EwelinkSignInFormState.initial()) {
    on<EwelinkAccountEmailChange>(_ewelinkAccountEmailChange);
    on<EwelinkAccountPassChange>(_ewelinkAccountPassChange);
    on<SignInWithEwelink>(_signInWithEwelink);
  }

  final IVendorsRepository _vendorRepository;

  //
  // @override
  // SignInFormState get initialStat`e => SignInFormState.initial();

  Future<void> _ewelinkAccountEmailChange(
    EwelinkAccountEmailChange event,
    Emitter<EwelinkSignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        ewelinkAccountEmail: GenericEwelinkAccountEmail(event.email),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _ewelinkAccountPassChange(
    EwelinkAccountPassChange event,
    Emitter<EwelinkSignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        ewelinkAccountPass: GenericEwelinkAccountPass(event.pass),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _signInWithEwelink(
    SignInWithEwelink event,
    Emitter<EwelinkSignInFormState> emit,
  ) async {
    final GenericEwelinkLoginDE genericEwelinkDE = GenericEwelinkLoginDE(
      senderUniqueId: CoreLoginSenderId.fromUniqueString('Me'),
      ewelinkAccountEmail:
          GenericEwelinkAccountEmail(state.ewelinkAccountEmail.getOrCrash()),
      ewelinkAccountPass:
          GenericEwelinkAccountPass(state.ewelinkAccountPass.getOrCrash()),
    );
    _vendorRepository.loginWithEwelink(genericEwelinkDE);
    //   emit(* _performActionOnAuthFacadeWithEmailAndPassword(
    //     _authFacade.registerWithEmailAndPassword,
  }
}
