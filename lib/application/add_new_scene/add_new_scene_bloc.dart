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
    on<SceneNameChange>(_sceneNameChange);
    on<AddDevicesWithNewActions>(_addDevicesWithNewActions);
    on<Deleted>(_deleted);
    on<Initialized>(_initialized);

    add(const AddNewSceneEvent.initialized());
  }

  final IRoomRepository _roomRepository;
  final IDeviceRepository _deviceRepository;

  List<RoomEntity?> _allRooms = [];
  List<DeviceEntityAbstract?> _allDevices = [];

  String actionsName = '';
  List<DeviceEntityAbstract> allDevices = [];

  /// List of devices with entities, will be treated as actions
  List<MapEntry<DeviceEntityAbstract, String?>> allDevicesWithNewAction = [];
  List<MapEntry<String, String>> allEntityActions = [];
  bool showErrorMessages = false;
  bool isSubmitting = false;
  Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption = none();

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
      LoadPageState(
        allDevices: _allDevices as List<DeviceEntityAbstract>,
        showErrorMessages: showErrorMessages,
        isSubmitting: isSubmitting,
        authFailureOrSuccessOption: authFailureOrSuccessOption,
        allEntityActions: allEntityActions,
        actionsName: actionsName,
        allDevicesWithNewAction: allDevicesWithNewAction,
      ),
    );
  }

  Future<void> _changeActionDevices(
    ChangeActionDevices event,
    Emitter<AddNewSceneState> emit,
  ) async {
    // for (final DeviceEntityAbstract? device in _allDevices) {
    //   if (device != null && event.deviceId == device.uniqueId.getOrCrash()) {
    //     emit(
    //       state.copyWith(
    //         allDevicesWithNewAction: [device],
    //         actionsName: '',
    //         authFailureOrSuccessOption: none(),
    //       ),
    //     );
    //   }
    // }
  }

  Future<void> _sceneNameChange(
    SceneNameChange event,
    Emitter<AddNewSceneState> emit,
  ) async {
    actionsName = event.sceneName;
  }

  Future<void> _addDevicesWithNewActions(
    AddDevicesWithNewActions event,
    Emitter<AddNewSceneState> emit,
  ) async {
    allDevicesWithNewAction.addAll(event.smartDevicesWithActionToAdd);

    emit(const LoadInProgress());
    emit(
      LoadPageState(
        allDevices: _allDevices as List<DeviceEntityAbstract>,
        showErrorMessages: showErrorMessages,
        isSubmitting: isSubmitting,
        authFailureOrSuccessOption: authFailureOrSuccessOption,
        allEntityActions: allEntityActions,
        actionsName: actionsName,
        allDevicesWithNewAction: allDevicesWithNewAction,
      ),
    );
  }

  Future<void> _deleted(
    Deleted event,
    Emitter<AddNewSceneState> emit,
  ) async {}
}
