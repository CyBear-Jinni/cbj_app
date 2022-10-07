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
  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<Initialized>(_initialized);
    on<AuthCheckRequested>(_authCheckRequested);
    on<SignedOut>(_signedOut);
  }

  final IAuthFacade _authFacade;

  Future<void> _initialized(
    Initialized event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.initial());
    add(const AuthEvent.authCheckRequested());
  }

  Future<void> _authCheckRequested(
    AuthCheckRequested event,
    Emitter<AuthState> emit,
  ) async {
    // For now will check only if hub connection info is saved
    emit(
      (await getIt<ILocalDbRepository>().getHubEntityNetworkName()).fold(
        (l) => const AuthState.unauthenticated(),
        (r) => const AuthState.authenticated(),
      ),
    );
    //
    // final userOption = await _authFacade.getSignedInUser();
    // yield userOption.fold(
    //   () => const AuthState.unauthenticated(),
    //   (_) => const AuthState.authenticated(),
    // );
  }

  Future<void> _signedOut(
    SignedOut event,
    Emitter<AuthState> emit,
  ) async {
    await _authFacade.signOut();
    emit(const AuthState.unauthenticated());
  }
}
