import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/devices/generic_smart_plug_device/generic_smart_plug_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'smart_plugs_actor_bloc.freezed.dart';
part 'smart_plugs_actor_event.dart';
part 'smart_plugs_actor_state.dart';

@injectable
class SmartPlugsActorBloc
    extends Bloc<SmartPlugsActorEvent, SmartPlugsActorState> {
  SmartPlugsActorBloc(this._deviceRepository)
      : super(const SmartPlugsActorState.initial()) {
    on<Initialized>(_initialized);
    on<Deleted>(_deleted);
    on<TurnOffAllSmartPlugs>(_turnOffAllSmartPlugs);
    on<TurnOnAllSmartPlugs>(_turnOnAllSmartPlugs);
  }

  final IDeviceRepository _deviceRepository;

  Future<void> _initialized(
    Initialized event,
    Emitter<SmartPlugsActorState> emit,
  ) async {}

  Future<void> _deleted(
    Deleted event,
    Emitter<SmartPlugsActorState> emit,
  ) async {}

  Future<void> _turnOffAllSmartPlugs(
    TurnOffAllSmartPlugs event,
    Emitter<SmartPlugsActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Turning Off all smartPlugs',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.turnOffDevices(devicesId: event.smartPlugsIdToTurnOff);
  }

  Future<void> _turnOnAllSmartPlugs(
    TurnOnAllSmartPlugs event,
    Emitter<SmartPlugsActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Turning On all smartPlugs',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    _deviceRepository.turnOnDevices(devicesId: event.smartPlugsIdToTurnOn);
  }
}
