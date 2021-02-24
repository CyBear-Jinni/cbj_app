import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/auth/auth_failure.dart';
import 'package:cybear_jinni/domain/auth/i_auth_facade.dart';
import 'package:cybear_jinni/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  final IAuthFacade _authFacade;

  //
  // @override
  // SignInFormState get initialStat`e => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(emailChanged: (e) async* {
      yield state.copyWith(
        emailAddress: EmailAddress(e.emailStr),
        authFailureOrSuccessOption: none(),
      );
    }, passwordChanged: (e) async* {
      yield state.copyWith(
        password: Password(e.passwordStr),
        authFailureOrSuccessOption: none(),
      );
    }, registerWithEmailAndPassword: (e) async* {
      yield* _performActionOnAuthFacadeWithEmailAndPassword(
        _authFacade.registerWithEmailAndPassword,
      );
    }, signInWithEmailAndPasswordPassed: (e) async* {
      yield* _performActionOnAuthFacadeWithEmailAndPassword(
        _authFacade.signInWithEmailAndPassword,
      );
    }, signInWithGooglePressed: (e) async* {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      final failureOrSuccess = await _authFacade.signInWithGoogle();
      yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: Some(failureOrSuccess),
      );
    });
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      @required EmailAddress emailAddress,
      @required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password);
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
