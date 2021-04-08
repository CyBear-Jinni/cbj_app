part of 'scene_bloc.dart';

@freezed
abstract class SceneState with _$SceneState {
  const factory SceneState() = _SceneState;

  factory SceneState.initialized() => SceneState();

  const factory SceneState.loading() = Loading;

  const factory SceneState.loaded(Scene scene) = Loaded;

  const factory SceneState.error() = Error;
}
