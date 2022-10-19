import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/devices/generic_switch_device/generic_switch_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'printers_actor_bloc.freezed.dart';
part 'printers_actor_event.dart';
part 'printers_actor_state.dart';

@injectable
class PrintersActorBloc extends Bloc<PrintersActorEvent, PrintersActorState> {
  PrintersActorBloc(this._deviceRepository)
      : super(const PrintersActorState.initial()) {
    on<Initialized>(_initialized);
    on<Deleted>(_deleted);
    on<TurnOffAllPrinters>(_turnOffAllPrinters);
    on<TurnOnAllPrinters>(_turnOnAllPrinters);
    on<SuspendAllPrinters>(_suspendAllPrinters);
    on<ShutdownAllPrinters>(_shutdownAllPrinters);
  }

  final IDeviceRepository _deviceRepository;

  Future<void> _initialized(
    Initialized event,
    Emitter<PrintersActorState> emit,
  ) async {}

  Future<void> _deleted(
    Deleted event,
    Emitter<PrintersActorState> emit,
  ) async {}

  Future<void> _turnOffAllPrinters(
    TurnOffAllPrinters event,
    Emitter<PrintersActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Turning Off all Smart Computers',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.turnOffDevices(
      devicesId: event.printersIdToTurnOff,
    );
  }

  Future<void> _turnOnAllPrinters(
    TurnOnAllPrinters event,
    Emitter<PrintersActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Turning On all Smart Computers',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.turnOnDevices(devicesId: event.printersIdToTurnOn);
  }

  Future<void> _suspendAllPrinters(
    SuspendAllPrinters event,
    Emitter<PrintersActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Suspending all Smart Computers',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.suspendDevices(devicesId: event.printersId);
  }

  Future<void> _shutdownAllPrinters(
    ShutdownAllPrinters event,
    Emitter<PrintersActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Suspending all Smart Computers',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.shutdownDevices(devicesId: event.printersId);
  }
}
