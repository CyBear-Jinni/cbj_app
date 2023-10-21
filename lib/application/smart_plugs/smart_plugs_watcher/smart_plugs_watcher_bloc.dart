import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'smart_plugs_watcher_bloc.freezed.dart';
part 'smart_plugs_watcher_event.dart';
part 'smart_plugs_watcher_state.dart';

@injectable
class SmartPlugsWatcherBloc
    extends Bloc<SmartPlugsWatcherEvent, SmartPlugsWatcherState> {
  SmartPlugsWatcherBloc(this._deviceRepository)
      : super(SmartPlugsWatcherState.initial()) {
    on<WatchAllStarted>(_watchAllStarted);
    on<DevicesReceived>(_devicesReceived);
  }

  final IDeviceRepository _deviceRepository;
  StreamSubscription<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;

  Future<void> _watchAllStarted(
    WatchAllStarted event,
    Emitter<SmartPlugsWatcherState> emit,
  ) async {
    emit(const SmartPlugsWatcherState.loadInProgress());
    await _deviceStreamSubscription?.cancel();
    _deviceStreamSubscription = _deviceRepository.watchSmartPlugs().listen(
          (eventWatch) =>
              add(SmartPlugsWatcherEvent.devicesReceived(eventWatch)),
        );
  }

  Future<void> _devicesReceived(
    DevicesReceived event,
    Emitter<SmartPlugsWatcherState> emit,
  ) async {
    emit(const SmartPlugsWatcherState.loadInProgress());
    emit(
      event.failureOrDevices.fold(
        (f) => SmartPlugsWatcherState.loadFailure(f),
        (d) => SmartPlugsWatcherState.loadSuccess(
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
