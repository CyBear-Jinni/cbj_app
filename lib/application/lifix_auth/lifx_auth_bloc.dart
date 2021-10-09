import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'lifx_auth_bloc.freezed.dart';
part 'lifx_auth_event.dart';
part 'lifx_auth_state.dart';

@injectable
class LifxAuthBloc extends Bloc<LifxAuthEvent, LifxAuthState> {
  LifxAuthBloc(this._authFacade) : super(const LifxAuthState.initial());

  final IAuthFacade _authFacade;

  @override
  Stream<LifxAuthState> mapEventToState(
    LifxAuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authFacade.getSignedInUser();
        yield userOption.fold(
          () => const LifxAuthState.unauthenticated(),
          (_) => const LifxAuthState.authenticated(),
        );
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield const LifxAuthState.unauthenticated();
      },
    );
  }
}
