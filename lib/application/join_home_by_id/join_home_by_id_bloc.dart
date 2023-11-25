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
  JoinHomeByIdBloc() : super(JoinHomeByIdState.initialized()) {
    on<Initialized>(_initialized);
    on<AddHomeById>(_addHomeById);
  }

  Future<void> _initialized(
    Initialized event,
    Emitter<JoinHomeByIdState> emit,
  ) async {
    // emit( initialization.fold(
    //   () => const InitializeHomeState.error(),
    //   (_) => const InitializeHomeState.loaded(),
    // );
  }

  Future<void> _addHomeById(
    AddHomeById event,
    Emitter<JoinHomeByIdState> emit,
  ) async {
    emit(const JoinHomeByIdState.loading());

    final getCurrentUser = (await IUserRepository.instance.getCurrentUser())
        .fold((l) => null, (r) => r);
    if (getCurrentUser == null) {
      emit(const JoinHomeByIdState.error());
    } else {
      final AllHomesOfUserEntity allHomesOfUserEntity = AllHomesOfUserEntity(
        id: AllHomesOfUserUniqueId.fromUniqueString(event.id),
        name: AllHomesOfUserName('home'),
      );
      final initialization = await IUserRepository.instance.addHome(
        getCurrentUser,
        allHomesOfUserEntity,
      );
      emit(
        initialization.fold(
          (l) => const JoinHomeByIdState.error(),
          (r) => const JoinHomeByIdState.loaded(),
        ),
      );
    }
  }
}
