part of 'add_new_scene_bloc.dart';

@freezed
class AddNewSceneEvent with _$AddNewSceneEvent {
  const factory AddNewSceneEvent.initialized() = Initialized;

  const factory AddNewSceneEvent.sceneNameChange(String sceneName) =
      SceneNameChange;

  const factory AddNewSceneEvent.changeActionDevices(String deviceId) =
      ChangeActionDevices;

  const factory AddNewSceneEvent.addDevicesWithNewActions(
    List<MapEntry<DeviceEntityAbstract, String?>> smartDevicesWithActionToAdd,
  ) = AddDevicesWithNewActions;

  const factory AddNewSceneEvent.deleted(GenericLightDE deviceEntity) = Deleted;
}
