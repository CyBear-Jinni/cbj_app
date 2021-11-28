import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/devices/generic_blinds_device/generic_blinds_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'blinds_watcher_bloc.freezed.dart';
part 'blinds_watcher_event.dart';
part 'blinds_watcher_state.dart';

@injectable
class BlindsWatcherBloc extends Bloc<BlindsWatcherEvent, BlindsWatcherState> {
  BlindsWatcherBloc(this._deviceRepository)
      : super(BlindsWatcherState.initial()) {
    on<WatchAllBlindsStarted>(_watchAllStarted);
    on<BlindsReceived>(_blindsReceived);
  }

  final IDeviceRepository _deviceRepository;
  StreamSubscription<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;

  Future<void> _watchAllStarted(
    WatchAllBlindsStarted event,
    Emitter<BlindsWatcherState> emit,
  ) async {
    emit(const BlindsWatcherState.loadInProgress());
    await _deviceStreamSubscription?.cancel();
    _deviceStreamSubscription = _deviceRepository.watchBlinds().listen(
          (eventWatch) => add(BlindsWatcherEvent.blindsReceived(eventWatch)),
        );
  }

  Future<void> _blindsReceived(
    BlindsReceived event,
    Emitter<BlindsWatcherState> emit,
  ) async {
    emit(const BlindsWatcherState.loadInProgress());
    emit(
      event.failureOrDevices.fold(
        (f) => BlindsWatcherState.loadFailure(f),
        (d) => BlindsWatcherState.loadSuccess(
          d.map((v) => v! as GenericBlindsDE).toMutableList(),
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
