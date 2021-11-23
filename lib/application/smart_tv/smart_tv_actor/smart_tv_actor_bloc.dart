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
      : super(const SmartTvActorState.initial());

  final IDeviceRepository _deviceRepository;

  @override
  Stream<SmartTvActorState> mapEventToState(
    SmartTvActorEvent event,
  ) async* {
    yield* event.map(
      deleted: (e) async* {},
      initialized: (e) async* {},
      turnOnTv: (MoveUpAllSmartTv value) async* {
        FlushbarHelper.createLoading(
          message: 'Pulling Up all smart_tv',
          linearProgressIndicator: const LinearProgressIndicator(),
        ).show(value.context);

        _deviceRepository.turnOnDevices(devicesId: value.smartTvIdToTurnOn);
      },
      turnOff: (StopAllSmartTv value) async* {
        FlushbarHelper.createLoading(
          message: 'Pulling Up all smart_tv',
          linearProgressIndicator: const LinearProgressIndicator(),
        ).show(value.context);

        _deviceRepository.turnOffDevices(devicesId: value.smartTvIdToTurnOff);
      },
    );
  }
}
