import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
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

  StreamSubscription<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;

  @override
  Stream<DeviceWatcherState> mapEventToState(
    DeviceWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const DeviceWatcherState.loadInProgress();
        _deviceStreamSubscription = _deviceRepository.watchAll().listen(
            (eventWatch) =>
                add(DeviceWatcherEvent.devicesReceived(eventWatch)));
      },
      devicesReceived: (e) async* {
        yield e.failureOrDevices.fold((f) => DeviceWatcherState.loadFailure(f),
            (d) {
          return DeviceWatcherState.loadSuccess(
              d.map((v) => v!).toMutableList());
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
