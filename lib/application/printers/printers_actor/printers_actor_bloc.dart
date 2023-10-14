import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_printer_device/generic_printer_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_switch_device/generic_switch_entity.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

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
    on<OpenPrintersWebPage>(_openPrintersWebPage);
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

  Future<void> _openPrintersWebPage(
    OpenPrintersWebPage event,
    Emitter<PrintersActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Opening printers Web Page',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    final String printerIp = event.printer.deviceLastKnownIp.getOrCrash();
    if (printerIp != null) {
      launchUrl(
        Uri.parse('http://$printerIp'),
        mode: LaunchMode.externalApplication,
      );
    } else {
      logger.e('Printer does not have lastKnownIp');

      FlushbarHelper.createLoading(
        message: 'Printer last ip does not exist',
        linearProgressIndicator: const LinearProgressIndicator(),
      ).show(event.context);
    }
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
