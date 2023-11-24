import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/auth/auth_failure.dart';
import 'package:cybear_jinni/domain/create_home/create_home_entity.dart';
import 'package:cybear_jinni/domain/create_home/create_home_value_objects.dart';
import 'package:cybear_jinni/domain/create_home/i_create_home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_home_bloc.freezed.dart';
part 'create_home_event.dart';
part 'create_home_state.dart';

@injectable
class CreateHomeBloc extends Bloc<CreateHomeEvent, CreateHomeState> {
  CreateHomeBloc() : super(CreateHomeState.initialized()) {
    on<Initialized>(_initialized);
    on<CreateHome>(_createHome);
  }

  Future<void> _initialized(
    Initialized event,
    Emitter<CreateHomeState> emit,
  ) async {}

  Future<void> _createHome(
    CreateHome event,
    Emitter<CreateHomeState> emit,
  ) async {
    emit(const CreateHomeState.loading());
    final CreateHomeEntity createHomeEntity = CreateHomeEntity(
      id: HomeUniqueId(),
      name: HomeName(event.homeName),
      homeDevicesUserId: HomeDevicesUserId(),
      homeDevicesUserEmail: HomeDevicesUserEmail(event.devicesEmail),
      homeDevicesUserPassword: HomeDevicesUserPassword(),
    );

    final initialization =
        await ICreateHomeRepository.instance.createNewHome(createHomeEntity);

    emit(
      initialization.fold(
        (_) => const CreateHomeState.error(),
        (_) => const CreateHomeState.loaded(),
      ),
    );
  }
}
