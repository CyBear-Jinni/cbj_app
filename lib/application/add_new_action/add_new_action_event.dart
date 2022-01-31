part of 'add_new_action_bloc.dart';

@freezed
class AddNewActionEvent with _$AddNewActionEvent {
  const factory AddNewActionEvent.actionsNameChange(String actionsName) =
      ActionsNameChange;

  const factory AddNewActionEvent.changeActionDevices(String deviceId) =
      ChangeActionDevices;

  const factory AddNewActionEvent.initialized() = Initialized;
}
