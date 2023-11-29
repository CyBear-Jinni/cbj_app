import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'security_camera_watcher_bloc.freezed.dart';
part 'security_camera_watcher_event.dart';
part 'security_camera_watcher_state.dart';

@injectable
class SecurityCamerasWatcherBloc
    extends Bloc<SecurityCamerasWatcherEvent, SecurityCamerasWatcherState> {
  SecurityCamerasWatcherBloc() : super(SecurityCamerasWatcherState.initial()) {
    on<WatchAllStarted>(_watchAllStarted);
    on<DevicesReceived>(_devicesReceived);
  }

  StreamSubscription<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;

  Future<void> _watchAllStarted(
    WatchAllStarted event,
    Emitter<SecurityCamerasWatcherState> emit,
  ) async {
    emit(const SecurityCamerasWatcherState.loadInProgress());
    await _deviceStreamSubscription?.cancel();
    // _deviceStreamSubscription =
    //     IDeviceRepository.instance.watchSecurityCameras().listen(
    //           (eventWatch) =>
    //               add(SecurityCamerasWatcherEvent.devicesReceived(eventWatch)),
    //         );
  }

  Future<void> _devicesReceived(
    DevicesReceived event,
    Emitter<SecurityCamerasWatcherState> emit,
  ) async {
    emit(const SecurityCamerasWatcherState.loadInProgress());
    emit(
      event.failureOrDevices.fold(
        (f) => SecurityCamerasWatcherState.loadFailure(f),
        (d) => SecurityCamerasWatcherState.loadSuccess(
          d.map((v) => v!).toMutableList(),
        ),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _deviceStreamSubscription?.cancel();
    return super.close();
  }
}
