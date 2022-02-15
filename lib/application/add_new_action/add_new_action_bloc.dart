import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/room/i_room_repository.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_new_action_bloc.freezed.dart';
part 'add_new_action_event.dart';
part 'add_new_action_state.dart';

@injectable
class AddNewActionBloc extends Bloc<AddNewActionEvent, AddNewActionState> {
  AddNewActionBloc(this._roomRepository, this._deviceRepository)
      : super(AddNewActionState.initial()) {
    on<ChangeActionDevices>(_changeActionDevices);
    on<ActionsNameChange>(_actionsNameChange);
    on<ChangePropertyForDevices>(_changePropertyForDevices);
    on<Initialized>(_initialized);

    add(const AddNewActionEvent.initialized());
  }

  // listOfPropertiesToChange

  final IRoomRepository _roomRepository;
  final IDeviceRepository _deviceRepository;

  List<RoomEntity?> _allRooms = [];
  List<DeviceEntityAbstract?> _allDevices = [];

  Future<void> _initialized(
    Initialized event,
    Emitter<AddNewActionState> emit,
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
    Emitter<AddNewActionState> emit,
  ) async {
    for (final DeviceEntityAbstract? device in _allDevices) {
      if (device != null &&
          event.actionForProperty == device.uniqueId.getOrCrash()) {
        emit(
          state.copyWith(
            allDevicesWithNewAction: [
              MapEntry(device, const MapEntry(null, null))
            ],
            actionsName: '',
            authFailureOrSuccessOption: none(),
          ),
        );
      }
    }
  }

  Future<void> _actionsNameChange(
    ActionsNameChange event,
    Emitter<AddNewActionState> emit,
  ) async {
    if (state.allDevicesWithNewAction.isNotEmpty) {
      final MapEntry<String?, String> propertyWithAction = MapEntry(
        state.allDevicesWithNewAction[0].value.key,
        event.actionsName,
      );
      state.allDevicesWithNewAction[0] =
          MapEntry(state.allDevicesWithNewAction[0].key, propertyWithAction);

      emit(
        state.copyWith(
          actionsName: event.actionsName,
          allDevicesWithNewAction: state.allDevicesWithNewAction,
          authFailureOrSuccessOption: none(),
        ),
      );
    }
  }

  Future<void> _changePropertyForDevices(
    ChangePropertyForDevices event,
    Emitter<AddNewActionState> emit,
  ) async {
    if (state.allDevicesWithNewAction.isNotEmpty) {
      final MapEntry<String?, String?> propertyWithAction = MapEntry(
        event.propertyOfDevice,
        null,
      );
      state.allDevicesWithNewAction[0] =
          MapEntry(state.allDevicesWithNewAction[0].key, propertyWithAction);

      emit(
        state.copyWith(
          propertyName: event.propertyOfDevice,
          allDevicesWithNewAction: state.allDevicesWithNewAction,
          authFailureOrSuccessOption: none(),
        ),
      );
    }
  }
}
