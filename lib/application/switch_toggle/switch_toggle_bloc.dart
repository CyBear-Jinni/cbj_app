import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'switch_toggle_bloc.freezed.dart';
part 'switch_toggle_event.dart';
part 'switch_toggle_state.dart';


@injectable
class SwitchToggleBloc extends Bloc<SwitchToggleEvent, SwitchToggleState> {
  SwitchToggleBloc(this._deviceRepository)
      : super(SwitchToggleState.initial()) {
    on<CreateDevice>(_create);
    on<ChangeState>(_changeAction);
    on<ChangeColor>(_changeColor);
  }

  final IDeviceRepository _deviceRepository;

  final int sendNewColorEachMiliseconds = 200;
  Timer? timeFromLastColorChange;
  HSVColor? lastColoredPicked;

  Future<void> _create(
    CreateDevice event,
    Emitter<SwitchToggleState> emit,
  ) async {
    await _deviceRepository.create(event.deviceEntity);
  }

  Future<void> _changeAction(
    ChangeState event,
    Emitter<SwitchToggleState> emit,
  ) async {
    Either<DevicesFailure, Unit> actionResult;

    if (event.changeToState) {
      actionResult = await _deviceRepository.turnOnDevices(
        devicesId: [event.deviceEntity.uniqueId.getOrCrash()],
      );
    } else {
      actionResult = await _deviceRepository.turnOffDevices(
        devicesId: [event.deviceEntity.uniqueId.getOrCrash()],
      );
    }

    emit(
      actionResult.fold(
        (devicesFailure) => SwitchToggleState.loadFailure(devicesFailure),
        (_) => const SwitchToggleState.loadSuccess(),
      ),
    );
  }

  Future<void> _changeColor(
    ChangeColor event,
    Emitter<SwitchToggleState> emit,
  ) async {
    lastColoredPicked = event.newColor;

    timeFromLastColorChange ??= Timer(
      Duration(milliseconds: sendNewColorEachMiliseconds),
      () {
        if (lastColoredPicked != null) {
          changeColorOncePerTimer(event);
        }
        timeFromLastColorChange = null;
      },
    );
  }

  Future<void> changeColorOncePerTimer(ChangeColor e) async {
    await _deviceRepository.changeHsvColorDevices(
      devicesId: [e.deviceEntity.uniqueId.getOrCrash()],
      hsvColorToChange: lastColoredPicked!,
    );
  }
}
