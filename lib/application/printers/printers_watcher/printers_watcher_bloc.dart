import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'printers_watcher_bloc.freezed.dart';
part 'printers_watcher_event.dart';
part 'printers_watcher_state.dart';

@injectable
class PrintersWatcherBloc
    extends Bloc<PrintersWatcherEvent, PrintersWatcherState> {
  PrintersWatcherBloc(this._deviceRepository)
      : super(PrintersWatcherState.initial()) {
    on<WatchAllStarted>(_watchAllStarted);
    on<DevicesReceived>(_devicesReceived);
  }

  final IDeviceRepository _deviceRepository;
  StreamSubscription<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;

  Future<void> _watchAllStarted(
    WatchAllStarted event,
    Emitter<PrintersWatcherState> emit,
  ) async {
    emit(const PrintersWatcherState.loadInProgress());
    await _deviceStreamSubscription?.cancel();
    _deviceStreamSubscription = _deviceRepository.watchPrinters().listen(
          (eventWatch) => add(PrintersWatcherEvent.devicesReceived(eventWatch)),
        );
  }

  Future<void> _devicesReceived(
    DevicesReceived event,
    Emitter<PrintersWatcherState> emit,
  ) async {
    emit(const PrintersWatcherState.loadInProgress());
    emit(
      event.failureOrDevices.fold(
        (f) => PrintersWatcherState.loadFailure(f),
        (d) => PrintersWatcherState.loadSuccess(
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
