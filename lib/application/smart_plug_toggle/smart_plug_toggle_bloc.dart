import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'smart_plug_toggle_bloc.freezed.dart';
part 'smart_plug_toggle_event.dart';
part 'smart_plug_toggle_state.dart';

@injectable
class SmartPlugToggleBloc
    extends Bloc<SmartPlugToggleEvent, SmartPlugToggleState> {
  SmartPlugToggleBloc()
      : super(SmartPlugToggleState.initial()) {
    on<CreateDevice>(_create);
    on<ChangeState>(_changeAction);
    on<ChangeColor>(_changeColor);
  }


  int sendNewColorEachMiliseconds = 200;
  Timer? timeFromLastColorChange;
  HSVColor? lastColoredPicked;

  Future<void> _create(
    CreateDevice event,
    Emitter<SmartPlugToggleState> emit,
  ) async {
    final actionResult = await IDeviceRepository.instance.create(event.deviceEntity);
  }

  Future<void> _changeAction(
    ChangeState event,
    Emitter<SmartPlugToggleState> emit,
  ) async {
    const SmartPlugToggleState.loadInProgress();

    Either<DevicesFailure, Unit> actionResult;

    if (event.changeToState) {
      actionResult = await IDeviceRepository.instance.turnOnDevices(
        devicesId: [event.deviceEntity.uniqueId.getOrCrash()],
      );
    } else {
      actionResult = await IDeviceRepository.instance.turnOffDevices(
        devicesId: [event.deviceEntity.uniqueId.getOrCrash()],
      );
    }

    emit(
      actionResult.fold(
        (devicesFailure) => SmartPlugToggleState.loadFailure(devicesFailure),
        (_) => const SmartPlugToggleState.loadSuccess(),
      ),
    );
  }

  Future<void> _changeColor(
    ChangeColor event,
    Emitter<SmartPlugToggleState> emit,
  ) async {
    lastColoredPicked = event.newColor;
    timeFromLastColorChange ??=
        Timer(Duration(milliseconds: sendNewColorEachMiliseconds), () {
      timeFromLastColorChange = null;
      changeColorOncePerTimer(event);
    });
  }

  /// This function will make sure that the app sends color once each x seconds.
  /// Moving the hand on the color slider sends tons of requests with
  /// different colors which is not efficient and some device can't even handle
  /// so many requests.
  Future<void> changeColorOncePerTimer(ChangeColor e) async {
    await IDeviceRepository.instance.changeHsvColorDevices(
      devicesId: [e.deviceEntity.uniqueId.getOrCrash()],
      hsvColorToChange: lastColoredPicked!,
    );
  }
}
