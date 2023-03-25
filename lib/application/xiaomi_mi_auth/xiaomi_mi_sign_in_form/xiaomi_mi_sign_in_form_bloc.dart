import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/vendors/i_vendor_repository.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:cybear_jinni/domain/vendors/xiaomi_mi_login/generic_xiaomi_mi_login_entity.dart';
import 'package:cybear_jinni/domain/vendors/xiaomi_mi_login/generic_xiaomi_mi_login_value_objects.dart';
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
    on<ApiKeyChanged>(_apiKeyChanged);
    on<SignInWithXiaomiMiApiKey>(_signInWithApiKey);
  }

  final IVendorsRepository _vendorRepository;

  //
  // @override
  // SignInFormState get initialStat`e => SignInFormState.initial();

  Future<void> _apiKeyChanged(
    ApiKeyChanged event,
    Emitter<XiaomiMiSignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        xiaomiMiDevicePassword:
            GenericXiaomiMiDeviceLoginApiPass(event.apiKeyStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _signInWithApiKey(
    SignInWithXiaomiMiApiKey event,
    Emitter<XiaomiMiSignInFormState> emit,
  ) async {
    final GenericXiaomiMiLoginDE genericXiaomiMiDE = GenericXiaomiMiLoginDE(
      senderUniqueId: CoreLoginSenderId.fromUniqueString('Me'),
      xiaomiMiDevicePass: GenericXiaomiMiDeviceLoginApiPass(
          state.xiaomiMiDevicePassword.getOrCrash()),
    );
    _vendorRepository.loginWithXiaomiMi(genericXiaomiMiDE);
    //   emit(* _performActionOnAuthFacadeWithEmailAndPassword(
    //     _authFacade.registerWithEmailAndPassword,
  }
}
