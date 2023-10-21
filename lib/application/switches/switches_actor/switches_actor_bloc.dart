import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_switch_device/generic_switch_entity.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'switches_actor_bloc.freezed.dart';
part 'switches_actor_event.dart';
part 'switches_actor_state.dart';

@injectable
class SwitchesActorBloc extends Bloc<SwitchesActorEvent, SwitchesActorState> {
  SwitchesActorBloc(this._deviceRepository)
      : super(const SwitchesActorState.initial()) {
    on<Initialized>(_initialized);
    on<Deleted>(_deleted);
    on<TurnOffAllSwitches>(_turnOffAllSwitches);
    on<TurnOnAllSwitches>(_turnOnAllSwitches);
  }

  final IDeviceRepository _deviceRepository;

  Future<void> _initialized(
    Initialized event,
    Emitter<SwitchesActorState> emit,
  ) async {}

  Future<void> _deleted(
    Deleted event,
    Emitter<SwitchesActorState> emit,
  ) async {}

  Future<void> _turnOffAllSwitches(
    TurnOffAllSwitches event,
    Emitter<SwitchesActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Turning Off all switches',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.turnOffDevices(devicesId: event.switchesIdToTurnOff);
  }

  Future<void> _turnOnAllSwitches(
    TurnOnAllSwitches event,
    Emitter<SwitchesActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Turning On all switches',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.turnOnDevices(devicesId: event.switchesIdToTurnOn);
  }
}
