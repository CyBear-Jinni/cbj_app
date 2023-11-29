import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_security_camera_device/generic_security_camera_entity.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_switch_device/generic_switch_entity.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

part 'security_camera_actor_bloc.freezed.dart';
part 'security_camera_actor_event.dart';
part 'security_camera_actor_state.dart';

@injectable
class SecurityCamerasActorBloc
    extends Bloc<SecurityCamerasActorEvent, SecurityCamerasActorState> {
  SecurityCamerasActorBloc()
      : super(const SecurityCamerasActorState.initial()) {
    on<Initialized>(_initialized);
    on<Deleted>(_deleted);
    on<TurnOffAllSecurityCameras>(_turnOffAllSecurityCameras);
    on<TurnOnAllSecurityCameras>(_turnOnAllSecurityCameras);
    on<OpenSecurityCamerasWebPage>(_openSecurityCamerasWebPage);
    on<ShutdownAllSecurityCameras>(_shutdownAllSecurityCameras);
  }

  Future<void> _initialized(
    Initialized event,
    Emitter<SecurityCamerasActorState> emit,
  ) async {}

  Future<void> _deleted(
    Deleted event,
    Emitter<SecurityCamerasActorState> emit,
  ) async {}

  Future<void> _turnOffAllSecurityCameras(
    TurnOffAllSecurityCameras event,
    Emitter<SecurityCamerasActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Turning Off all Smart Computers',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    IDeviceRepository.instance.turnOffDevices(
      devicesId: event.securityCamerasIdToTurnOff,
    );
  }

  Future<void> _turnOnAllSecurityCameras(
    TurnOnAllSecurityCameras event,
    Emitter<SecurityCamerasActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Turning On all Smart Computers',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    IDeviceRepository.instance
        .turnOnDevices(devicesId: event.securityCamerasIdToTurnOn);
  }

  Future<void> _openSecurityCamerasWebPage(
    OpenSecurityCamerasWebPage event,
    Emitter<SecurityCamerasActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Opening securityCameras Web Page',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    final String securityCameraIp =
        event.securityCamera.deviceLastKnownIp.getOrCrash();
    launchUrl(
      Uri.parse('http://$securityCameraIp'),
      mode: LaunchMode.externalApplication,
    );
  }

  Future<void> _shutdownAllSecurityCameras(
    ShutdownAllSecurityCameras event,
    Emitter<SecurityCamerasActorState> emit,
  ) async {
    FlushbarHelper.createLoading(
      message: 'Suspending all Smart Computers',
      linearProgressIndicator: const LinearProgressIndicator(),
    ).show(event.context);

    IDeviceRepository.instance
        .shutdownDevices(devicesId: event.securityCamerasId);
  }
}
