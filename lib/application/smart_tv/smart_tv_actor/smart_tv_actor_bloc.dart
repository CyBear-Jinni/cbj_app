import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
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
    on<OpenUrl>(_openUrl);
    on<PausePlayState>(_pausePlayState);
    on<SkipVideoTo>(_skipVideoTo);
    on<ChangeVolume>(_changeVolume);
  }

  final IDeviceRepository _deviceRepository;

  Future<void> _initialized(
    Initialized event,
    Emitter<SmartTvActorState> emit,
  ) async {}

  Future<void> _openUrl(
    OpenUrl event,
    Emitter<SmartTvActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Open url on smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);
    _deviceRepository.openUrlOnDevices(devicesId: event.smartTvId);
  }

  Future<void> _pausePlayState(
    PausePlayState event,
    Emitter<SmartTvActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Pause/Play smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.pausePlayStateDevices(devicesId: event.smartTvId);
  }

  Future<void> _skipVideoTo(
    SkipVideoTo event,
    Emitter<SmartTvActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Skip smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.skipVideoDevices(devicesId: event.smartTvId);
  }

  Future<void> _changeVolume(
    ChangeVolume event,
    Emitter<SmartTvActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Change volume smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.changeVolumeDevices(devicesId: event.smartTvId);
  }
}
