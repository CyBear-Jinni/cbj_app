part of 'scene_bloc.dart';

@freezed
class SceneEvent with _$SceneEvent {
  const factory SceneEvent.initialized({required Scene scene}) = Initialized;
}

//      {required Either<SceneFailure, Scene> scene}) = Initialized;
// .fold((l) => null, (r) => r)
