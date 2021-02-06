import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/auth/auth_failure.dart';
import 'package:cybear_jinni/domain/initialize_home/i_initialize_home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'initialize_home_bloc.freezed.dart';

part 'initialize_home_event.dart';

part 'initialize_home_state.dart';

@injectable
class InitializeHomeBloc
    extends Bloc<InitializeHomeEvent, InitializeHomeState> {
  InitializeHomeBloc(this._initialzeHomeRepository)
      : super(InitializeHomeState.initialized());

  final IInitializeHomeRepository _initialzeHomeRepository;

  @override
  Stream<InitializeHomeState> mapEventToState(
    InitializeHomeEvent event,
  ) async* {
    yield* event.map(initialized: (e) async* {
      final initialization =
          await _initialzeHomeRepository.initializingNewHome();
      yield initialization.fold(
        () => const InitializeHomeState.error(),
        (_) => const InitializeHomeState.loaded(),
      );
    });
  }
}
//
// @override
// Stream<AuthState> mapEventToState(
//     AuthEvent event,
//     ) async* {
//   yield* event.map(authCheckRequested: (e) async* {
//     final userOption = await _authFacade.getSignedInUser();
//     yield userOption.fold(
//           () => const AuthState.unauthenticated(),
//           (_) => const AuthState.authenticated(),
//     );
//   }, signedOut: (e) async* {
//     await _authFacade.signOut();
//     yield const AuthState.unauthenticated();
//   });
// }
// }
