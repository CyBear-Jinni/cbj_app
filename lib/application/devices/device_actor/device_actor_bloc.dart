import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_light_device/generic_light_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'device_actor_bloc.freezed.dart';
part 'device_actor_event.dart';
part 'device_actor_state.dart';

@injectable
class DeviceActorBloc extends Bloc<DeviceActorEvent, DeviceActorState> {
  DeviceActorBloc(this._deviceRepository)
      : super(const DeviceActorState.initial()) {
    on<Deleted>(_deleted);
    on<Initialized>(_initialized);
  }

  final IDeviceRepository _deviceRepository;

  Future<void> _deleted(
    Deleted event,
    Emitter<DeviceActorState> emit,
  ) async {}

  Future<void> _initialized(
    Initialized event,
    Emitter<DeviceActorState> emit,
  ) async {}
}
