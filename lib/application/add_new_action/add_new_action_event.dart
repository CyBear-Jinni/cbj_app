part of 'add_new_action_bloc.dart';

@freezed
class AddNewActionEvent with _$AddNewActionEvent {
  const factory AddNewActionEvent.defaultNameChanged(String defaultName) =
      DefaultNameChanged;

  const factory AddNewActionEvent.roomTypesChanged(
    List<String> roomTypes,
  ) = RoomTypesChanged;

  const factory AddNewActionEvent.roomIdChanged(
    String roomId,
  ) = RoomIdChanged;

  const factory AddNewActionEvent.roomDevicesIdChanged(
    List<String> roomDevicesId,
  ) = RoomDevicesIdChanged;

  const factory AddNewActionEvent.roomMostUsedByChanged(
    List<String> roomMostUsedBy,
  ) = RoomMostUsedByChanged;

  const factory AddNewActionEvent.roomPermissionsChanged(
    List<String> roomPermissions,
  ) = RoomPermissionsChanged;

  const factory AddNewActionEvent.changeRoomDevices() = ChangeRoomDevices;

  const factory AddNewActionEvent.createRoom() = CreateRoom;

  const factory AddNewActionEvent.initialized() = Initialized;
}
