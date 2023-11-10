import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/domain/vendors/i_vendor_repository.dart';
import 'package:cbj_integrations_controller/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cbj_integrations_controller/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:cbj_integrations_controller/domain/vendors/xiaomi_mi_login/generic_xiaomi_mi_login_entity.dart';
import 'package:cbj_integrations_controller/domain/vendors/xiaomi_mi_login/generic_xiaomi_mi_login_value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'xiaomi_mi_sign_in_form_bloc.freezed.dart';
part 'xiaomi_mi_sign_in_form_event.dart';
part 'xiaomi_mi_sign_in_form_state.dart';

@injectable
class XiaomiMiSignInFormBloc
    extends Bloc<XiaomiMiSignInFormEvent, XiaomiMiSignInFormState> {
  XiaomiMiSignInFormBloc(this._vendorRepository)
      : super(XiaomiMiSignInFormState.initial()) {
    on<XiaomiMiAccountEmailChange>(_xiaomiMiAccountEmailChange);
    on<XiaomiMiAccountPassChange>(_xiaomiMiAccountPassChange);
    on<SignInWithXiaoMi>(_signInWithXiaoMi);
  }

  final IVendorsRepository _vendorRepository;

  //
  // @override
  // SignInFormState get initialStat`e => SignInFormState.initial();

  Future<void> _xiaomiMiAccountEmailChange(
    XiaomiMiAccountEmailChange event,
    Emitter<XiaomiMiSignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        xiaomiMiAccountEmail: GenericXiaomiMiAccountEmail(event.email),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _xiaomiMiAccountPassChange(
    XiaomiMiAccountPassChange event,
    Emitter<XiaomiMiSignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        xiaomiMiAccountPass: GenericXiaomiMiAccountPass(event.pass),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _signInWithXiaoMi(
    SignInWithXiaoMi event,
    Emitter<XiaomiMiSignInFormState> emit,
  ) async {
    final GenericXiaomiMiLoginDE genericXiaomiMiDE = GenericXiaomiMiLoginDE(
      senderUniqueId: CoreLoginSenderId.fromUniqueString('Me'),
      xiaomiMiAccountEmail:
          GenericXiaomiMiAccountEmail(state.xiaomiMiAccountEmail.getOrCrash()),
      xiaomiMiAccountPass:
          GenericXiaomiMiAccountPass(state.xiaomiMiAccountPass.getOrCrash()),
    );
    _vendorRepository.loginWithXiaomiMi(genericXiaomiMiDE);
    //   emit(* _performActionOnAuthFacadeWithEmailAndPassword(
    //     _authFacade.registerWithEmailAndPassword,
  }
}
