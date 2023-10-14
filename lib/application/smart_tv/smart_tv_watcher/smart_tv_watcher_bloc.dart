import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/generic_smart_tv/generic_smart_tv_entity.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'smart_tv_watcher_bloc.freezed.dart';
part 'smart_tv_watcher_event.dart';
part 'smart_tv_watcher_state.dart';

@injectable
class SmartTvWatcherBloc
    extends Bloc<SmartTvWatcherEvent, SmartTvWatcherState> {
  SmartTvWatcherBloc(this._deviceRepository)
      : super(SmartTvWatcherState.initial()) {
    on<WatchAllSmartTvStarted>(_watchAllStarted);
    on<Smart_tvReceived>(_smartTvReceived);
  }

  Future<void> _watchAllStarted(
    WatchAllSmartTvStarted event,
    Emitter<SmartTvWatcherState> emit,
  ) async {
    emit(const SmartTvWatcherState.loadInProgress());
    await _deviceStreamSubscription?.cancel();
    _deviceStreamSubscription = _deviceRepository.watchSmartTv().listen(
          (eventWatch) => add(SmartTvWatcherEvent.smartTvReceived(eventWatch)),
        );
  }

  Future<void> _smartTvReceived(
    Smart_tvReceived event,
    Emitter<SmartTvWatcherState> emit,
  ) async {
    emit(const SmartTvWatcherState.loadInProgress());

    emit(
      event.failureOrDevices.fold(
        (f) => SmartTvWatcherState.loadFailure(f),
        (d) => SmartTvWatcherState.loadSuccess(
          d.map((v) => v! as GenericSmartTvDE).toMutableList(),
        ),
      ),
    );
  }

  final IDeviceRepository _deviceRepository;
  StreamSubscription<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;

  @override
  Future<void> close() async {
    await _deviceStreamSubscription?.cancel();
    return super.close();
  }
}
