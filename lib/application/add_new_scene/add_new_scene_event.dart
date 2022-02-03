part of 'add_new_scene_bloc.dart';

@freezed
class AddNewSceneEvent with _$AddNewSceneEvent {
  const factory AddNewSceneEvent.initialized() = Initialized;

  const factory AddNewSceneEvent.actionsNameChange(String actionsName) =
      ActionsNameChange;

  const factory AddNewSceneEvent.changeActionDevices(String deviceId) =
      ChangeActionDevices;

  const factory AddNewSceneEvent.addDevicesWithNewActions(
    List<DeviceEntityAbstract> smartDevicesToAdd,
  ) = AddDevicesWithNewActions;

  const factory AddNewSceneEvent.deleted(GenericLightDE deviceEntity) = Deleted;
}
