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
  LightToggleBloc(this._deviceRepository) : super(LightToggleState.initial());

  final IDeviceRepository _deviceRepository;

  @override
  Stream<LightToggleState> mapEventToState(
    LightToggleEvent event,
  ) async* {
    yield* event.map(
      create: (e) async* {
        final actionResult = await _deviceRepository.create(event.deviceEntity);
      },
      changeAction: (e) async* {
        Either<DevicesFailure, Unit> actionResult;

        if (e.changeToState) {
          actionResult = await _deviceRepository.turnOnDevices(
            devicesId: [e.deviceEntity.uniqueId.getOrCrash()!],
          );
        } else {
          actionResult = await _deviceRepository.turnOffDevices(
            devicesId: [e.deviceEntity.uniqueId.getOrCrash()!],
          );
        }
      },
      changeColor: (ChangeColor e) async* {
        yield state.copyWith(hsvColor: e.newColor);
        _deviceRepository.changeColorDevices(
          devicesId: [e.deviceEntity.uniqueId.getOrCrash()!],
          colorToChange: e.newColor,
        );
      },
      changeBrightness: (ChangeBrightness value) async* {
        yield state.copyWith(brightness: value.brightness);

        _deviceRepository.changeBrightnessDevices(
          devicesId: [value.deviceEntity.uniqueId.getOrCrash()!],
          brightnessToChange: value.brightness.round(),
        );
      },
    );
  }
}
