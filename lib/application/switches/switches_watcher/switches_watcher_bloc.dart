import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'switches_watcher_bloc.freezed.dart';
part 'switches_watcher_event.dart';
part 'switches_watcher_state.dart';

@injectable
class SwitchesWatcherBloc
    extends Bloc<SwitchesWatcherEvent, SwitchesWatcherState> {
  SwitchesWatcherBloc(this._deviceRepository)
      : super(SwitchesWatcherState.initial());

  final IDeviceRepository _deviceRepository;
  StreamSubscription<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;

  @override
  Stream<SwitchesWatcherState> mapEventToState(
    SwitchesWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const SwitchesWatcherState.loadInProgress();
        await _deviceStreamSubscription?.cancel();
        _deviceStreamSubscription = _deviceRepository.watchSwitches().listen(
              (eventWatch) =>
                  add(SwitchesWatcherEvent.devicesReceived(eventWatch)),
            );
      },
      devicesReceived: (e) async* {
        yield const SwitchesWatcherState.loadInProgress();
        yield e.failureOrDevices.fold(
          (f) => SwitchesWatcherState.loadFailure(f),
          (d) => SwitchesWatcherState.loadSuccess(
            d.map((v) => v!).toMutableList(),
          ),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _deviceStreamSubscription?.cancel();
    return super.close();
  }
}
