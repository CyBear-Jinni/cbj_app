import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/devices/generic_switch_device/generic_switch_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'switches_actor_bloc.freezed.dart';
part 'switches_actor_event.dart';
part 'switches_actor_state.dart';

@injectable
class SwitchesActorBloc extends Bloc<SwitchesActorEvent, SwitchesActorState> {
  SwitchesActorBloc(this._deviceRepository)
      : super(const SwitchesActorState.initial());

  final IDeviceRepository _deviceRepository;

  @override
  Stream<SwitchesActorState> mapEventToState(
    SwitchesActorEvent event,
  ) async* {
    yield* event.map(
      deleted: (e) async* {},
      initialized: (e) async* {},
      turnOffAllSwitches: (TurnOffAllSwitches value) async* {
        FlushbarHelper.createLoading(
          message: 'Turning Off all switches',
          linearProgressIndicator: const LinearProgressIndicator(),
        ).show(value.context);

        _deviceRepository.turnOffDevices(devicesId: value.switchesIdToTurnOff);
      },
      turnOnAllSwitches: (TurnOnAllSwitches value) async* {
        FlushbarHelper.createLoading(
          message: 'Turning On all switches',
          linearProgressIndicator: const LinearProgressIndicator(),
        ).show(value.context);

        _deviceRepository.turnOnDevices(devicesId: value.switchesIdToTurnOn);
      },
    );
  }
}
