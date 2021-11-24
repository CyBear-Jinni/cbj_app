import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'light_toggle_bloc.freezed.dart';
part 'light_toggle_event.dart';
part 'light_toggle_state.dart';

@injectable
class LightToggleBloc extends Bloc<LightToggleEvent, LightToggleState> {
  LightToggleBloc(this._deviceRepository) : super(LightToggleState.initial()) {
    on<CreateDevice>(_create);
    on<ChangeState>(_changeAction);
    on<ChangeColor>(_changeColor);
    on<ChangeBrightness>(_changeBrightness);
  }

  final IDeviceRepository _deviceRepository;

  Future<void> _create(
    CreateDevice event,
    Emitter<LightToggleState> emit,
  ) async {
    final actionResult = await _deviceRepository.create(event.deviceEntity);
  }

  Future<void> _changeAction(
    ChangeState event,
    Emitter<LightToggleState> emit,
  ) async {
    Either<DevicesFailure, Unit> actionResult;

    if (event.changeToState) {
      actionResult = await _deviceRepository.turnOnDevices(
        devicesId: [event.deviceEntity.uniqueId.getOrCrash()!],
      );
    } else {
      actionResult = await _deviceRepository.turnOffDevices(
        devicesId: [event.deviceEntity.uniqueId.getOrCrash()!],
      );
    }
  }

  Future<void> _changeColor(
    ChangeColor event,
    Emitter<LightToggleState> emit,
  ) async {
    emit(state.copyWith(hsvColor: event.newColor));
    _deviceRepository.changeColorDevices(
      devicesId: [event.deviceEntity.uniqueId.getOrCrash()!],
      colorToChange: event.newColor,
    );
  }

  Future<void> _changeBrightness(
    ChangeBrightness event,
    Emitter<LightToggleState> emit,
  ) async {
    emit(state.copyWith(brightness: event.brightness));

    _deviceRepository.changeBrightnessDevices(
      devicesId: [event.deviceEntity.uniqueId.getOrCrash()!],
      brightnessToChange: event.brightness.round(),
    );
  }
}
