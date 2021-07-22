import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/device/device_entity.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
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
      : super(BlindsWatcherState.initial());

  final IDeviceRepository _deviceRepository;
  StreamSubscription<Either<DevicesFailure, KtList<DeviceEntity?>>>?
      _deviceStreamSubscription;

  @override
  Stream<BlindsWatcherState> mapEventToState(
    BlindsWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const BlindsWatcherState.loadInProgress();
        await _deviceStreamSubscription?.cancel();
        _deviceStreamSubscription = _deviceRepository.watchBlinds().listen(
            (eventWatch) => add(BlindsWatcherEvent.blindsReceived(eventWatch)));
      },
      blindsReceived: (e) async* {
        yield e.failureOrDevices.fold((f) => BlindsWatcherState.loadFailure(f),
            (d) => BlindsWatcherState.loadSuccess(d));
      },
    );
  }

  @override
  Future<void> close() async {
    await _deviceStreamSubscription?.cancel();
    return super.close();
  }
}
