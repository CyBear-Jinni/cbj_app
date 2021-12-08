part of 'room_sign_in_form_bloc.dart';

@freezed
class RoomSignInFormEvent with _$RoomSignInFormEvent {
  const factory RoomSignInFormEvent.defaultNameChanged(String defaultName) =
      DefaultNameChanged;

  const factory RoomSignInFormEvent.roomTypesChanged(
    List<String> roomTypes,
  ) = RoomTypesChanged;

  const factory RoomSignInFormEvent.roomDevicesIdChanged(
    List<String> roomDevicesId,
  ) = RoomDevicesIdChanged;

  const factory RoomSignInFormEvent.roomMostUsedByChanged(
    List<String> roomMostUsedBy,
  ) = RoomMostUsedByChanged;

  const factory RoomSignInFormEvent.roomPermissionsChanged(
    List<String> roomPermissions,
  ) = RoomPermissionsChanged;

  const factory RoomSignInFormEvent.signIn() = SignInWithApiKey;
}
