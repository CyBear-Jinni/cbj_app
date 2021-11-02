import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/auth/i_auth_facade.dart';
import 'package:cybear_jinni/domain/local_db/i_local_db_repository.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authFacade) : super(const AuthState.initial());

  final IAuthFacade _authFacade;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        // For now will check only if hub connection info is saved
        yield (await getIt<ILocalDbRepository>().getHubEntityNetworkName())
            .fold(
          (l) => const AuthState.unauthenticated(),
          (r) => const AuthState.authenticated(),
        );
        //
        // final userOption = await _authFacade.getSignedInUser();
        // yield userOption.fold(
        //   () => const AuthState.unauthenticated(),
        //   (_) => const AuthState.authenticated(),
        // );
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}
