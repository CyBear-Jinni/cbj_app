import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/devices/generic_switch_device/generic_switch_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'smart_computers_actor_bloc.freezed.dart';
part 'smart_computers_actor_event.dart';
part 'smart_computers_actor_state.dart';

@injectable
class SmartComputersActorBloc
    extends Bloc<SmartComputersActorEvent, SmartComputersActorState> {
  SmartComputersActorBloc(this._deviceRepository)
      : super(const SmartComputersActorState.initial()) {
    on<Initialized>(_initialized);
    on<Deleted>(_deleted);
    on<TurnOffAllSmartComputers>(_turnOffAllSmartComputers);
    on<TurnOnAllSmartComputers>(_turnOnAllSmartComputers);
    on<SuspendAllSmartComputers>(_suspendAllSmartComputers);
    on<ShutdownAllSmartComputers>(_shutdownAllSmartComputers);
  }

  final IDeviceRepository _deviceRepository;

  Future<void> _initialized(
    Initialized event,
    Emitter<SmartComputersActorState> emit,
  ) async {}

  Future<void> _deleted(
    Deleted event,
    Emitter<SmartComputersActorState> emit,
  ) async {}

  Future<void> _turnOffAllSmartComputers(
    TurnOffAllSmartComputers event,
    Emitter<SmartComputersActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Turning Off all Smart Computers',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.turnOffDevices(
      devicesId: event.smartComputersIdToTurnOff,
    );
  }

  Future<void> _turnOnAllSmartComputers(
    TurnOnAllSmartComputers event,
    Emitter<SmartComputersActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Turning On all Smart Computers',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.turnOnDevices(devicesId: event.smartComputersIdToTurnOn);
  }

  Future<void> _suspendAllSmartComputers(
    SuspendAllSmartComputers event,
    Emitter<SmartComputersActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Suspending all Smart Computers',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.suspendDevices(devicesId: event.smartComputersId);
  }

  Future<void> _shutdownAllSmartComputers(
    ShutdownAllSmartComputers event,
    Emitter<SmartComputersActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Suspending all Smart Computers',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.shutdownDevices(devicesId: event.smartComputersId);
  }
}
