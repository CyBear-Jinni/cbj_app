import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/devices/generic_light_device/generic_light_entity.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'blinds_actor_bloc.freezed.dart';
part 'blinds_actor_event.dart';
part 'blinds_actor_state.dart';

@injectable
class BlindsActorBloc extends Bloc<BlindsActorEvent, BlindsActorState> {
  BlindsActorBloc(this._deviceRepository)
      : super(const BlindsActorState.initial()) {
    on<Deleted>(_deleted);
    on<Initialized>(_initialized);
    on<MoveUpAllBlinds>(_moveUpAllBlinds);
    on<StopAllBlinds>(_stopAllBlinds);
    on<MoveDownAllBlinds>(_moveDownAllBlinds);
  }

  final IDeviceRepository _deviceRepository;

  Future<void> _deleted(
    Deleted event,
    Emitter<BlindsActorState> emit,
  ) async {}

  Future<void> _initialized(
    Initialized event,
    Emitter<BlindsActorState> emit,
  ) async {}

  Future<void> _moveUpAllBlinds(
    MoveUpAllBlinds event,
    Emitter<BlindsActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Pulling_Up_all_blinds'.tr(),
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.moveUpBlinds(devicesId: event.blindsIdToTurnUp);
  }

  Future<void> _stopAllBlinds(
    StopAllBlinds event,
    Emitter<BlindsActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Stopping_all_blinds'.tr(),
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.stopBlinds(devicesId: event.blindsIdToStop);
  }

  Future<void> _moveDownAllBlinds(
    MoveDownAllBlinds event,
    Emitter<BlindsActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Pulling_down_all_blinds'.tr(),
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.moveDownBlinds(devicesId: event.blindsIdToTurnDown);
  }
}
