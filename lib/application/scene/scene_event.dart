part of 'scene_bloc.dart';

@freezed
abstract class SceneEvent with _$SceneEvent {
  const factory SceneEvent.initialized() = Initialized;
}
