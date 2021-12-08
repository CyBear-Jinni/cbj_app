import 'dart:async';

import 'package:bloc/bloc.dart';
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
  RoomSignInFormBloc(this._roomRepository)
      : super(RoomSignInFormState.initial()) {
    on<SignInWithApiKey>(_signIn);
    on<DefaultNameChanged>(_defaultNameChanged);
    on<RoomTypesChanged>(_roomTypesChanged);
    on<RoomDevicesIdChanged>(_roomDevicesIdChanged);
    on<RoomMostUsedByChanged>(_roomMostUsedByChanged);
    on<RoomPermissionsChanged>(_roomPermissionsChanged);
  }

  final IRoomRepository _roomRepository;

  //
  // @override
  // SignInFormState get initialStat`e => SignInFormState.initial();

  Future<void> _signIn(
    SignInWithApiKey event,
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
