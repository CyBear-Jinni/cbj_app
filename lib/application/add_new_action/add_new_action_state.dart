part of 'add_new_action_bloc.dart';

@freezed
class AddNewActionState with _$AddNewActionState {
  const factory AddNewActionState({
    required List<RoomEntity> allRooms,
    required List<DeviceEntityAbstract> allDevices,
    required RoomUniqueId roomUniqueId,
    required RoomDefaultName defaultName,
    required RoomTypes roomTypes,
    required RoomDevicesId roomDevicesId,
    required RoomMostUsedBy roomMostUsedBy,
    required RoomPermissions roomPermissions,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption,
  }) = _AddNewActionState;

  factory AddNewActionState.initial() => AddNewActionState(
        allRooms: [],
        allDevices: [],
        roomUniqueId: RoomUniqueId(),
        defaultName: RoomDefaultName(''),
        roomTypes: RoomTypes(const []),
        roomDevicesId: RoomDevicesId(const []),
        roomMostUsedBy: RoomMostUsedBy(const []),
        roomPermissions: RoomPermissions(const []),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
