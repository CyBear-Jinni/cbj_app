import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/devices/generic_light_device/generic_light_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'smart_tv_actor_bloc.freezed.dart';
part 'smart_tv_actor_event.dart';
part 'smart_tv_actor_state.dart';

@injectable
class SmartTvActorBloc extends Bloc<SmartTvActorEvent, SmartTvActorState> {
  SmartTvActorBloc(this._deviceRepository)
      : super(const SmartTvActorState.initial()) {
    on<Initialized>(_initialized);
    on<Deleted>(_deleted);
    on<MoveUpAllSmartTv>(_turnOnTv);
    on<StopAllSmartTv>(_turnOff);
  }

  final IDeviceRepository _deviceRepository;

  Future<void> _initialized(
    Initialized event,
    Emitter<SmartTvActorState> emit,
  ) async {}

  Future<void> _deleted(
    Deleted event,
    Emitter<SmartTvActorState> emit,
  ) async {}

  Future<void> _turnOnTv(
    MoveUpAllSmartTv event,
    Emitter<SmartTvActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Pulling Up all smart_tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.turnOnDevices(devicesId: event.smartTvIdToTurnOn);
  }

  Future<void> _turnOff(
    StopAllSmartTv event,
    Emitter<SmartTvActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Pulling Up all smart_tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.turnOffDevices(devicesId: event.smartTvIdToTurnOff);
  }
}
