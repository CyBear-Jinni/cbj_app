import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/local_db/i_local_db_repository2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial()) {
    on<Initialized>(_initialized);
    on<AuthCheckRequested>(_authCheckRequested);
  }

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
      (await ILocalDbRepository2.instance.getHubEntityNetworkName()).fold(
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
}
