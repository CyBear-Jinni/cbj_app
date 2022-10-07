import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/device/devices_failures.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/devices/generic_boiler_device/generic_boiler_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'boilers_watcher_bloc.freezed.dart';
part 'boilers_watcher_event.dart';
part 'boilers_watcher_state.dart';

@injectable
class BoilersWatcherBloc
    extends Bloc<BoilersWatcherEvent, BoilersWatcherState> {
  BoilersWatcherBloc(this._deviceRepository)
      : super(BoilersWatcherState.initial()) {
    on<WatchAllBoilersStarted>(_watchAllStarted);
    on<BoilersReceived>(_boilersReceived);
  }

  final IDeviceRepository _deviceRepository;
  StreamSubscription<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;

  Future<void> _watchAllStarted(
    WatchAllBoilersStarted event,
    Emitter<BoilersWatcherState> emit,
  ) async {
    emit(const BoilersWatcherState.loadInProgress());
    await _deviceStreamSubscription?.cancel();
    _deviceStreamSubscription = _deviceRepository.watchBoilers().listen(
          (eventWatch) => add(BoilersWatcherEvent.boilersReceived(eventWatch)),
        );
  }

  Future<void> _boilersReceived(
    BoilersReceived event,
    Emitter<BoilersWatcherState> emit,
  ) async {
    emit(const BoilersWatcherState.loadInProgress());
    emit(
      event.failureOrDevices.fold(
        (f) => BoilersWatcherState.loadFailure(f),
        (d) => BoilersWatcherState.loadSuccess(
          d.map((v) => v! as GenericBoilerDE).toMutableList(),
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
