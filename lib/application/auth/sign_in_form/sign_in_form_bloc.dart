import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/auth/auth_failure.dart';
import 'package:cybear_jinni/domain/auth/i_auth_facade.dart';
import 'package:cybear_jinni/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<EmailChanged>(_emailChanged);
    on<PasswordChanged>(_passwordChanged);
    on<RegisterWithEmailAndPassword>(_registerWithEmailAndPassword);
    on<SignInWithEmailAndPasswordPassed>(_signInWithEmailAndPasswordPassed);
    on<SignInWithGooglePressed>(_signInWithGooglePressed);
  }

  final IAuthFacade _authFacade;

  Future<void> _emailChanged(
    EmailChanged event,
    Emitter<SignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        emailAddress: EmailAddress(event.emailStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _passwordChanged(
    PasswordChanged event,
    Emitter<SignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        password: Password(event.passwordStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _registerWithEmailAndPassword(
    RegisterWithEmailAndPassword event,
    Emitter<SignInFormState> emit,
  ) async {
    _performActionOnAuthFacadeWithEmailAndPassword(
      _authFacade.registerWithEmailAndPassword,
    ).forEach((element) {
      emit(element);
    });
  }

  Future<void> _signInWithEmailAndPasswordPassed(
    SignInWithEmailAndPasswordPassed event,
    Emitter<SignInFormState> emit,
  ) async {
    _performActionOnAuthFacadeWithEmailAndPassword(
      _authFacade.signInWithEmailAndPassword,
    ).forEach((element) {
      emit(element);
    });
  }

  Future<void> _signInWithGooglePressed(
    SignInWithGooglePressed event,
    Emitter<SignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ),
    );
    emit(
      state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: Some(right(unit)),
      ),
    );
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
