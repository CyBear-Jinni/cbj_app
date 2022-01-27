import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/devices/generic_light_device/generic_light_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_new_scene_bloc.freezed.dart';
part 'add_new_scene_event.dart';
part 'add_new_scene_state.dart';

@injectable
class AddNewSceneBloc extends Bloc<AddNewSceneEvent, AddNewSceneState> {
  AddNewSceneBloc(this._deviceRepository)
      : super(const AddNewSceneState.initial()) {
    on<Deleted>(_deleted);
    on<Initialized>(_initialized);
  }

  final IDeviceRepository _deviceRepository;

  Future<void> _deleted(
    Deleted event,
    Emitter<AddNewSceneState> emit,
  ) async {}

  Future<void> _initialized(
    Initialized event,
    Emitter<AddNewSceneState> emit,
  ) async {}
}
