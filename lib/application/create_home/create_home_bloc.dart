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
  CreateHomeBloc(this._createHomeRepository)
      : super(CreateHomeState.initialized());

  final ICreateHomeRepository _createHomeRepository;

  @override
  Stream<CreateHomeState> mapEventToState(
    CreateHomeEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {},
      createHome: (e) async* {
        yield const CreateHomeState.loading();
        final CreateHomeEntity createHomeEntity = CreateHomeEntity(
          id: HomeUniqueId(),
          name: HomeName(e.homeName),
          homeDevicesUserEmail: HomeDevicesUserEmail(e.devicesEmail),
          homeDevicesUserPassword: HomeDevicesUserPassword(),
        );

        final initialization =
            await _createHomeRepository.createNewHome(createHomeEntity);

        yield initialization.fold(
          (_) => const CreateHomeState.error(),
          (_) => const CreateHomeState.loaded(),
        );
      },
    );
  }
}
