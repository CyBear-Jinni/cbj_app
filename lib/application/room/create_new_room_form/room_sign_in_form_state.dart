part of 'room_sign_in_form_bloc.dart';

@freezed
class RoomSignInFormState with _$RoomSignInFormState {
  const factory RoomSignInFormState({
    required List<RoomEntity> allRooms,
    required List<DeviceEntityAbstract> allDevices,
    required RoomUniqueId roomUniqueId,
    required RoomDefaultName cbjEntityName,
    required RoomBackground background,
    required RoomTypes roomTypes,
    required RoomDevicesId roomDevicesId,
    required RoomScenesId roomScenesId,
    required RoomRoutinesId roomRoutinesId,
    required RoomBindingsId roomBindingsId,
    required RoomMostUsedBy roomMostUsedBy,
    required RoomPermissions roomPermissions,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<CoreLoginFailure, Unit>> authFailureOrSuccessOption,
  }) = _RoomSignInFormState;

  factory RoomSignInFormState.initial() => RoomSignInFormState(
        allRooms: [],
        allDevices: [],
        roomUniqueId: RoomUniqueId(),
        cbjEntityName: RoomDefaultName(''),
        background: RoomBackground(
          'https://live.staticflickr.com/5220/5486044345_f67abff3e9_h.jpg',
        ),
        roomTypes: RoomTypes(const []),
        roomDevicesId: RoomDevicesId(const []),
        roomScenesId: RoomScenesId(const []),
        roomRoutinesId: RoomRoutinesId(const []),
        roomBindingsId: RoomBindingsId(const []),
        roomMostUsedBy: RoomMostUsedBy(const []),
        roomPermissions: RoomPermissions(const []),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
