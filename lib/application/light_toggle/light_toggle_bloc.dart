import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'light_toggle_bloc.freezed.dart';
part 'light_toggle_event.dart';
part 'light_toggle_state.dart';

@injectable
class LightToggleBloc extends Bloc<LightToggleEvent, LightToggleState> {
  LightToggleBloc() : super(LightToggleState.initial()) {
    on<Initialized>(_initialized);
    on<ChangeState>(_changeState);
    on<ChangeColorTemperature>(_changeColorTemperature);
    on<ChangeHsvColor>(_changeHsvColor);
    on<ChangeBrightness>(_changeBrightness);
  }

  Future<void> _initialized(
    Initialized event,
    Emitter<LightToggleState> emit,
  ) async {
    final GenericRgbwLightDE rgbwLightDe = event.rgbwLightDe;

    int lightColorTemperature =
        int.parse(rgbwLightDe.lightColorTemperature.getOrCrash());

    if (lightColorTemperature > 10000) {
      lightColorTemperature = 10000;
    }

    double lightBrightness =
        double.parse(rgbwLightDe.lightBrightness.getOrCrash());

    if (lightBrightness > 100) {
      lightBrightness = 100;
    }

    emit(
      state.copyWith(
        colorTemperature: lightColorTemperature,
        brightness: lightBrightness,
      ),
    );
  }

  Future<void> _changeState(
    ChangeState event,
    Emitter<LightToggleState> emit,
  ) async {
    if (event.changeToState) {
      await IDeviceRepository.instance.turnOnDevices(
        devicesId: [event.deviceEntity.uniqueId.getOrCrash()],
      );
    } else {
      await IDeviceRepository.instance.turnOffDevices(
        devicesId: [event.deviceEntity.uniqueId.getOrCrash()],
      );
    }
  }

  Future<void> _changeColorTemperature(
    ChangeColorTemperature event,
    Emitter<LightToggleState> emit,
  ) async {
    emit(state.copyWith(colorTemperature: event.newColorTemperature));
    IDeviceRepository.instance.changeColorTemperatureDevices(
      devicesId: [event.deviceEntity.uniqueId.getOrCrash()],
      colorTemperatureToChange: event.newColorTemperature,
    );
  }

  Future<void> _changeHsvColor(
    ChangeHsvColor event,
    Emitter<LightToggleState> emit,
  ) async {
    emit(state.copyWith(hsvColor: event.newHsvColor));
    IDeviceRepository.instance.changeHsvColorDevices(
      devicesId: [event.deviceEntity.uniqueId.getOrCrash()],
      hsvColorToChange: event.newHsvColor,
    );
  }

  Future<void> _changeBrightness(
    ChangeBrightness event,
    Emitter<LightToggleState> emit,
  ) async {
    emit(state.copyWith(brightness: event.brightness));

    IDeviceRepository.instance.changeBrightnessDevices(
      devicesId: [event.deviceEntity.uniqueId.getOrCrash()],
      brightnessToChange: event.brightness.round(),
    );
  }
}
