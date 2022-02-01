part of 'add_new_scene_bloc.dart';

@freezed
class AddNewSceneState with _$AddNewSceneState {
  const factory AddNewSceneState.initial() = _Initial;

  const factory AddNewSceneState.actionInProgress() = _ActionInProgress;

  const factory AddNewSceneState.deleteFailure(DevicesFailure devicesFailure) =
      _DeleteFailure;

  const factory AddNewSceneState.deleteSuccess() = _DeleteSuccess;
}
