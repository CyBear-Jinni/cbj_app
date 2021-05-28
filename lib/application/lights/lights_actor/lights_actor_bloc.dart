import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/domain/devices/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/i_device_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'lights_actor_bloc.freezed.dart';
part 'lights_actor_event.dart';
part 'lights_actor_state.dart';

@injectable
class LightsActorBloc extends Bloc<LightsActorEvent, LightsActorState> {
  LightsActorBloc(this._deviceRepository)
      : super(const LightsActorState.initial());

  final IDeviceRepository _deviceRepository;

  @override
  Stream<LightsActorState> mapEventToState(
    LightsActorEvent event,
  ) async* {
    yield* event.map(
      deleted: (e) async* {},
      initialized: (e) async* {},
      turnOffAllLights: (_TurnOffAllLights value) async* {
        FlushbarHelper.createLoading(
          message: 'Turning Off all lights',
          linearProgressIndicator: const LinearProgressIndicator(),
        ).show(value.context);

        _deviceRepository.turnOffDevices(
            devicesId: value.lightsIdToTurnOff, forceUpdateLocation: 'R');
      },
      turnOnAllLights: (_TurnOnAllLights value) async* {
        FlushbarHelper.createLoading(
          message: 'Turning On all lights',
          linearProgressIndicator: const LinearProgressIndicator(),
        ).show(value.context);

        _deviceRepository.turnOnDevices(
            devicesId: value.lightsIdToTurnOn, forceUpdateLocation: 'R');
      },
    );
  }
}
