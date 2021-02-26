import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/device_entity.dart';
import 'package:cybear_jinni/domain/devices/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/i_device_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'device_watcher_bloc.freezed.dart';
part 'device_watcher_event.dart';
part 'device_watcher_state.dart';

@injectable
class DeviceWatcherBloc extends Bloc<DeviceWatcherEvent, DeviceWatcherState> {
  DeviceWatcherBloc(this._deviceRepository)
      : super(DeviceWatcherState.initial());

  final IDeviceRepository _deviceRepository;
  StreamSubscription<Either<DevicesFailure, KtList<DeviceEntity>>>
      _deviceStreamSubscription;

  @override
  Stream<DeviceWatcherState> mapEventToState(
    DeviceWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const DeviceWatcherState.loadInProgress();
        await _deviceStreamSubscription?.cancel();
        _deviceStreamSubscription = _deviceRepository
            .watchAll()
            .listen((Either<DevicesFailure, KtList<DeviceEntity>> eventWatch) {
          return eventWatch.fold((f) => DeviceWatcherState.loadFailure(f),
              (d) => DeviceWatcherState.loadSuccess(d));
        });
      },
    );
  }

  @override
  Future<void> close() async {
    await _deviceStreamSubscription?.cancel();
    return super.close();
  }
}
