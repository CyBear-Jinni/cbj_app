import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_boiler_device/generic_boiler_entity.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'boilers_actor_bloc.freezed.dart';
part 'boilers_actor_event.dart';
part 'boilers_actor_state.dart';

@injectable
class BoilersActorBloc extends Bloc<BoilersActorEvent, BoilersActorState> {
  BoilersActorBloc() : super(const BoilersActorState.initial()) {
    on<Deleted>(_deleted);
    on<Initialized>(_initialized);
    on<TurnOnAllBoilers>(_turnOnAllBoilers);
    on<TurnOffAllBoilers>(_turnOffAllBoilers);
  }

  Future<void> _deleted(
    Deleted event,
    Emitter<BoilersActorState> emit,
  ) async {}

  Future<void> _initialized(
    Initialized event,
    Emitter<BoilersActorState> emit,
  ) async {}

  Future<void> _turnOnAllBoilers(
    TurnOnAllBoilers event,
    Emitter<BoilersActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Turning_On_boiler'.tr(),
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    IDeviceRepository.instance
        .turnOnDevices(devicesId: event.boilersIdToTurnUp);
  }

  Future<void> _turnOffAllBoilers(
    TurnOffAllBoilers event,
    Emitter<BoilersActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Turning_Off_boiler'.tr(),
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    IDeviceRepository.instance
        .turnOffDevices(devicesId: event.boilersIdToTurnOff);
  }
}
