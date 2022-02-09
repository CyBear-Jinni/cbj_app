part of 'scene_bloc.dart';

@freezed
class SceneEvent with _$SceneEvent {
  const factory SceneEvent.initialized({required SceneCbj scene}) = Initialized;
}

//      {required Either<SceneFailure, SceneCbj> scene}) = Initialized;
// .fold((l) => null, (r) => r)
