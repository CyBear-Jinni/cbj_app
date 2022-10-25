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
    on<StopEvent>(_stopState);
    on<CloseEvent>(_closeEvent);
    on<PauseEvent>(_pauseState);
    on<PlayEvent>(_playState);
    on<SkipVideoTo>(_skipVideoTo);
    on<ChangeVolume>(_changeVolume);
    on<QueuePrevEvent>(_queuePrevEvent);
    on<QueueNextEvent>(_queueNextEvent);
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
    _deviceRepository.openUrlOnDevices(
      devicesId: event.smartTvId,
      url: event.url,
    );
  }

  Future<void> _stopState(
    StopEvent event,
    Emitter<SmartTvActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Stop smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.stopStateDevices(devicesId: event.smartTvId);
  }

  Future<void> _closeEvent(
    CloseEvent event,
    Emitter<SmartTvActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Close current app on smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.closeStateDevices(devicesId: event.smartTvId);
  }

  Future<void> _pauseState(
    PauseEvent event,
    Emitter<SmartTvActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Pause smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.pauseStateDevices(devicesId: event.smartTvId);
  }

  Future<void> _playState(
    PlayEvent event,
    Emitter<SmartTvActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Play smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.playStateDevices(devicesId: event.smartTvId);
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

  Future<void> _queuePrevEvent(
    QueuePrevEvent event,
    Emitter<SmartTvActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Change volume smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.queuePrevStateDevices(devicesId: event.smartTvId);
  }

  Future<void> _queueNextEvent(
    QueueNextEvent event,
    Emitter<SmartTvActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Change volume smart tv',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.queueNextStateDevices(devicesId: event.smartTvId);
  }
}
