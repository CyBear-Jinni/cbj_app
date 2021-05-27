part of 'scene_bloc.dart';

@freezed
abstract class SceneEvent with _$SceneEvent {
  const factory SceneEvent.initialized({required Scene scene}) = _Initialized;
}

//      {required Either<SceneFailure, Scene> scene}) = Initialized;
// .fold((l) => null, (r) => r)
