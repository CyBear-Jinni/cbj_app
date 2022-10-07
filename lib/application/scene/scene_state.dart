part of 'scene_bloc.dart';

@freezed
class SceneState with _$SceneState {
  const factory SceneState() = _SceneState;

  factory SceneState.initialized() => const SceneState();

  const factory SceneState.loading() = _Loading;

  const factory SceneState.loaded(SceneCbjEntity sceneCbj) = _Loaded;

  const factory SceneState.error() = Error;
}
