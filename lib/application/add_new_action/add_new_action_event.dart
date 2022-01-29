part of 'add_new_action_bloc.dart';

@freezed
class AddNewActionEvent with _$AddNewActionEvent {
  const factory AddNewActionEvent.actionsNameChange(String actionsName) =
      ActionsNameChange;

  const factory AddNewActionEvent.changeActionDevices(String deviceId) =
      ChangeRoomDevices;

  const factory AddNewActionEvent.createRoom() = CreateRoom;

  const factory AddNewActionEvent.initialized() = Initialized;
}
