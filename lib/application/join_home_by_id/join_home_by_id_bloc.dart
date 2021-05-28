import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/auth/auth_failure.dart';
import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_entity.dart';
import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_value_objects.dart';
import 'package:cybear_jinni/domain/user/i_user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'join_home_by_id_bloc.freezed.dart';
part 'join_home_by_id_event.dart';
part 'join_home_by_id_state.dart';

@injectable
class JoinHomeByIdBloc extends Bloc<JoinHomeByIdEvent, JoinHomeByIdState> {
  JoinHomeByIdBloc(this._iUserRepository)
      : super(JoinHomeByIdState.initialized());

  final IUserRepository _iUserRepository;

  @override
  Stream<JoinHomeByIdState> mapEventToState(
    JoinHomeByIdEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        // yield initialization.fold(
        //   () => const InitializeHomeState.error(),
        //   (_) => const InitializeHomeState.loaded(),
        // );
      },
      addHomeById: (e) async* {
        yield const JoinHomeByIdState.loading();

        final getCurrentUser = (await _iUserRepository.getCurrentUser())
            .fold((l) => null, (r) => r);
        if (getCurrentUser == null) {
          yield const JoinHomeByIdState.error();
        } else {
          final AllHomesOfUserEntity allHomesOfUserEntity =
              AllHomesOfUserEntity(
                  id: AllHomesOfUserUniqueId.fromUniqueString(e.id),
                  name: AllHomesOfUserName('home'));
          final initialization = await _iUserRepository.addHome(
              getCurrentUser, allHomesOfUserEntity);
          yield initialization.fold(
            (l) => const JoinHomeByIdState.error(),
            (r) => const JoinHomeByIdState.loaded(),
          );
        }
      },
    );
  }
}
