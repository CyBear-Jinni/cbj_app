import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/domain/devices/device/i_device_repository.dart';
import 'package:cybear_jinni/domain/room/i_room_repository.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/domain/room/value_objects_room.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/core_login_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'room_sign_in_form_bloc.freezed.dart';
part 'room_sign_in_form_event.dart';
part 'room_sign_in_form_state.dart';

@injectable
class RoomSignInFormBloc
    extends Bloc<RoomSignInFormEvent, RoomSignInFormState> {
  RoomSignInFormBloc(this._roomRepository, this._deviceRepository)
      : super(RoomSignInFormState.initial()) {
    on<CreateRoom>(_createRoom);
    on<ChangeRoomDevices>(_changeRoomDevices);
    on<DefaultNameChanged>(_defaultNameChanged);
    on<RoomTypesChanged>(_roomTypesChanged);
    on<RoomIdChanged>(_roomIdChanged);
    on<RoomDevicesIdChanged>(_roomDevicesIdChanged);
    on<RoomMostUsedByChanged>(_roomMostUsedByChanged);
    on<RoomPermissionsChanged>(_roomPermissionsChanged);
    on<Initialized>(_initialized);

    add(const RoomSignInFormEvent.initialized());
  }

  final IRoomRepository _roomRepository;
  final IDeviceRepository _deviceRepository;

  List<RoomEntity?> _allRooms = [];
  List<DeviceEntityAbstract?> _allDevices = [];

  Future<void> _initialized(
    Initialized event,
    Emitter<RoomSignInFormState> emit,
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
        allRooms: _allRooms as List<RoomEntity>,
        allDevices: _allDevices as List<DeviceEntityAbstract>,
      ),
    );
  }

  Future<void> _changeRoomDevices(
    ChangeRoomDevices event,
    Emitter<RoomSignInFormState> emit,
  ) async {
    final RoomEntity roomEntity = RoomEntity(
      uniqueId: RoomUniqueId.fromUniqueString(state.roomUniqueId.getOrCrash()),
      defaultName: RoomDefaultName(state.defaultName.getOrCrash()),
      roomTypes: RoomTypes(state.roomTypes.getOrCrash()),
      roomDevicesId: RoomDevicesId(state.roomDevicesId.getOrCrash()),
      roomMostUsedBy: RoomMostUsedBy(state.roomMostUsedBy.getOrCrash()),
      roomPermissions: RoomPermissions(state.roomPermissions.getOrCrash()),
    );

    _roomRepository.create(roomEntity);
  }

  Future<void> _createRoom(
    CreateRoom event,
    Emitter<RoomSignInFormState> emit,
  ) async {
    final RoomEntity roomEntity = RoomEntity(
      uniqueId: RoomUniqueId.fromUniqueString(state.roomUniqueId.getOrCrash()),
      defaultName: RoomDefaultName(state.defaultName.getOrCrash()),
      roomTypes: RoomTypes(state.roomTypes.getOrCrash()),
      roomDevicesId: RoomDevicesId(state.roomDevicesId.getOrCrash()),
      roomMostUsedBy: RoomMostUsedBy(state.roomMostUsedBy.getOrCrash()),
      roomPermissions: RoomPermissions(state.roomPermissions.getOrCrash()),
    );

    _roomRepository.create(roomEntity);
  }

  Future<void> _defaultNameChanged(
    DefaultNameChanged event,
    Emitter<RoomSignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        defaultName: RoomDefaultName(event.defaultName),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _roomTypesChanged(
    RoomTypesChanged event,
    Emitter<RoomSignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        roomTypes: RoomTypes(event.roomTypes),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _roomIdChanged(
    RoomIdChanged event,
    Emitter<RoomSignInFormState> emit,
  ) async {
    for (final RoomEntity? roomEntity in _allRooms) {
      if (roomEntity != null &&
          roomEntity.uniqueId.getOrCrash() == event.roomId) {
        emit(
          state.copyWith(
            roomUniqueId: roomEntity.uniqueId,
            defaultName: roomEntity.defaultName,
            authFailureOrSuccessOption: none(),
          ),
        );
        return;
      }
    }
  }

  Future<void> _roomDevicesIdChanged(
    RoomDevicesIdChanged event,
    Emitter<RoomSignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        roomDevicesId: RoomDevicesId(event.roomDevicesId),
        authFailureOrSuccessOption: none(),
      ),
    );
    // Navigator.pop(context);
  }

  Future<void> _roomMostUsedByChanged(
    RoomMostUsedByChanged event,
    Emitter<RoomSignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        roomMostUsedBy: RoomMostUsedBy(event.roomMostUsedBy),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _roomPermissionsChanged(
    RoomPermissionsChanged event,
    Emitter<RoomSignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        roomPermissions: RoomPermissions(event.roomPermissions),
        authFailureOrSuccessOption: none(),
      ),
    );
  }
}
