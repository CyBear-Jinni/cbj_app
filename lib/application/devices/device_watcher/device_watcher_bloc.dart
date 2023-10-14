import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/domain/room/i_room_repository.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/domain/room/room_failures.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/device/devices_failures.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
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
      : super(DeviceWatcherState.initial()) {
    on<WatchAllStarted>(_watchAllStarted);
    on<RoomsReceived>(_roomsReceived);
    on<DevicesReceived>(_devicesReceived);
  }

  final IDeviceRepository _deviceRepository;

  KtList<DeviceEntityAbstract?> listOfDevices = [null].toImmutableList();
  KtList<RoomEntity?> listOfRooms = [null].toImmutableList();

  StreamSubscription<Either<RoomFailure, KtList<RoomEntity?>>>?
      _roomStreamSubscription;

  StreamSubscription<Either<DevicesFailure, KtList<DeviceEntityAbstract?>>>?
      _deviceStreamSubscription;
  //
  // @override
  // Stream<DeviceWatcherState> mapEventToState(
  //   DeviceWatcherEvent event,
  // ) async* {

  //     devicesReceived: (e) async* {

  //     },
  //   );
  // }

  Future<void> _roomsReceived(
    RoomsReceived event,
    Emitter<DeviceWatcherState> emit,
  ) async {
    emit(const DeviceWatcherState.loadInProgress());

    emit(
      event.failureOrRooms.fold(
          (f) =>
              const DeviceWatcherState.loadFailure(DevicesFailure.unexpected()),
          (d) {
        listOfRooms = d;

        return DeviceWatcherState.loadSuccess(
          listOfRooms,
          listOfDevices,
        );
      }),
    );
  }

  Future<void> _devicesReceived(
    DevicesReceived event,
    Emitter<DeviceWatcherState> emit,
  ) async {
    emit(const DeviceWatcherState.loadInProgress());

    emit(
      event.failureOrDevices.fold((f) => DeviceWatcherState.loadFailure(f),
          (d) {
        listOfDevices = d;

        return DeviceWatcherState.loadSuccess(
          listOfRooms,
          listOfDevices,
        );
      }),
    );
  }

  Future<void> _watchAllStarted(
    WatchAllStarted event,
    Emitter<DeviceWatcherState> emit,
  ) async {
    emit(const DeviceWatcherState.loadInProgress());

    _roomStreamSubscription =
        IRoomRepository.instance.watchAllRooms().listen((eventWatch) {
      add(DeviceWatcherEvent.roomsReceived(eventWatch));
    });

    _deviceStreamSubscription =
        _deviceRepository.watchAllDevices().listen((eventWatch) {
      add(DeviceWatcherEvent.devicesReceived(eventWatch));
    });
  }

  @override
  Future<void> close() async {
    await _roomStreamSubscription?.cancel();
    await _deviceStreamSubscription?.cancel();
    return super.close();
  }
}
