import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/domain/room/i_room_repository.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_new_scene_bloc.freezed.dart';

part 'add_new_scene_event.dart';

part 'add_new_scene_state.dart';

@injectable
class AddNewSceneBloc extends Bloc<AddNewSceneEvent, AddNewSceneState> {
  AddNewSceneBloc(this._roomRepository, this._deviceRepository)
      : super(AddNewSceneState.initial()) {
    on<ChangeActionDevices>(_changeActionDevices);
    on<ActionsNameChange>(_actionsNameChange);
    on<AddDevicesWithNewActions>(_addDevicesWithNewActions);
    on<Deleted>(_deleted);
    on<Initialized>(_initialized);

    add(const AddNewSceneEvent.initialized());
  }

  final IRoomRepository _roomRepository;
  final IDeviceRepository _deviceRepository;

  /// List of devices with entities, will be treated as actions
  List<DeviceEntityAbstract> allDevicesWithNewAction = [];

  List<RoomEntity?> _allRooms = [];
  List<DeviceEntityAbstract?> _allDevices = [];

  Future<void> _initialized(
    Initialized event,
    Emitter<AddNewSceneState> emit,
  ) async {
    (await _roomRepository.getAllRooms()).fold((l) => null, (r) {
      _allRooms = List<RoomEntity>.from(r.iter);
    });

    (await _deviceRepository.getAllDevices()).fold((l) => null, (r) {
      _allDevices = List<DeviceEntityAbstract>.from(r.iter);
    });
    _allRooms.removeWhere((element) => element == null);
    _allDevices.removeWhere((element) => element == null);

    emit(
      state.copyWith(
        allDevices: _allDevices as List<DeviceEntityAbstract>,
      ),
    );
  }

  Future<void> _changeActionDevices(
    ChangeActionDevices event,
    Emitter<AddNewSceneState> emit,
  ) async {
    for (final DeviceEntityAbstract? device in _allDevices) {
      if (device != null && event.deviceId == device.uniqueId.getOrCrash()) {
        emit(
          state.copyWith(
            allDevicesWithNewAction: [device],
            actionsName: '',
            authFailureOrSuccessOption: none(),
          ),
        );
      }
    }
  }

  Future<void> _actionsNameChange(
    ActionsNameChange event,
    Emitter<AddNewSceneState> emit,
  ) async {
    if (state.allDevicesWithNewAction.isNotEmpty) {
      state.allDevicesWithNewAction[0].replaceActionIfExist(event.actionsName);
      emit(
        state.copyWith(
          actionsName: event.actionsName,
          allDevicesWithNewAction: state.allDevicesWithNewAction,
          authFailureOrSuccessOption: none(),
        ),
      );
    }
  }

  Future<void> _addDevicesWithNewActions(
    AddDevicesWithNewActions event,
    Emitter<AddNewSceneState> emit,
  ) async {
    allDevicesWithNewAction.addAll(event.smartDevicesToAdd);
    emit(
      state.copyWith(
        allDevicesWithNewAction: allDevicesWithNewAction,
      ),
    );
  }

  Future<void> _deleted(
    Deleted event,
    Emitter<AddNewSceneState> emit,
  ) async {}
}
