import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/devices/generic_light_device/generic_light_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'lights_watcher_bloc.freezed.dart';
part 'lights_watcher_event.dart';
part 'lights_watcher_state.dart';

@injectable
class LightsWatcherBloc extends Bloc<LightsWatcherEvent, LightsWatcherState> {
  LightsWatcherBloc(this._deviceRepository)
      : super(LightsWatcherState.initial());

  final IDeviceRepository _deviceRepository;
  StreamSubscription<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;

  @override
  Stream<LightsWatcherState> mapEventToState(
    LightsWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const LightsWatcherState.loadInProgress();
        await _deviceStreamSubscription?.cancel();
        _deviceStreamSubscription = _deviceRepository.watchLights().listen(
            (eventWatch) =>
                add(LightsWatcherEvent.devicesReceived(eventWatch)));
      },
      devicesReceived: (e) async* {
        yield const LightsWatcherState.loadInProgress();
        yield e.failureOrDevices.fold(
            (f) => LightsWatcherState.loadFailure(f),
            (d) => LightsWatcherState.loadSuccess(
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
