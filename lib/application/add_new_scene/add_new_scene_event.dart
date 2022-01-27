part of 'add_new_scene_bloc.dart';

@freezed
class AddNewSceneEvent with _$AddNewSceneEvent {
  const factory AddNewSceneEvent.initialized() = Initialized;

  const factory AddNewSceneEvent.deleted(GenericLightDE deviceEntity) = Deleted;
}
