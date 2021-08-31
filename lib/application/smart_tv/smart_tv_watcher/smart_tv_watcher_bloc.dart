import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/devices/generic_light_device/generic_light_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
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
      : super(SmartTvWatcherState.initial());

  final IDeviceRepository _deviceRepository;
  StreamSubscription<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;

  @override
  Stream<SmartTvWatcherState> mapEventToState(
    SmartTvWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const SmartTvWatcherState.loadInProgress();
        await _deviceStreamSubscription?.cancel();
        _deviceStreamSubscription = _deviceRepository.watchSmartTv().listen(
            (eventWatch) =>
                add(SmartTvWatcherEvent.smart_tvReceived(eventWatch)));
      },
      smart_tvReceived: (e) async* {
        yield e.failureOrDevices.fold(
            (f) => SmartTvWatcherState.loadFailure(f),
            (d) => SmartTvWatcherState.loadSuccess(
                d.map((v) => v! as GenericLightDE).toMutableList()));
      },
    );
  }

  @override
  Future<void> close() async {
    await _deviceStreamSubscription?.cancel();
    return super.close();
  }
}
