import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_light_device/generic_light_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'lights_actor_bloc.freezed.dart';
part 'lights_actor_event.dart';
part 'lights_actor_state.dart';

@injectable
class LightsActorBloc extends Bloc<LightsActorEvent, LightsActorState> {
  LightsActorBloc()
      : super(const LightsActorState.initial()) {
    on<Initialized>(_initialized);
    on<Deleted>(_deleted);
    on<TurnOffAllLights>(_turnOffAllLights);
    on<TurnOnAllLights>(_turnOnAllLights);
  }


  Future<void> _initialized(
    Initialized event,
    Emitter<LightsActorState> emit,
  ) async {}

  Future<void> _deleted(
    Deleted event,
    Emitter<LightsActorState> emit,
  ) async {}

  Future<void> _turnOffAllLights(
    TurnOffAllLights event,
    Emitter<LightsActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Turning Off all lights',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    IDeviceRepository.instance.turnOffDevices(devicesId: event.lightsIdToTurnOff);
  }

  Future<void> _turnOnAllLights(
    TurnOnAllLights event,
    Emitter<LightsActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Turning On all lights',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    IDeviceRepository.instance.turnOnDevices(devicesId: event.lightsIdToTurnOn);
  }
}
