import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/scene/i_scene_cbj_repository.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'scene_bloc.freezed.dart';
part 'scene_event.dart';
part 'scene_state.dart';

@injectable
class SceneBloc extends Bloc<SceneEvent, SceneState> {
  SceneBloc(this._iSceneRepository) : super(SceneState.initialized()) {
    on<Initialized>(_initialized);
    on<ActivateScene>(_activateScene);
  }

  final ISceneCbjRepository _iSceneRepository;
  late SceneCbjEntity sceneCbj;

  Future<void> _initialized(
    Initialized event,
    Emitter<SceneState> emit,
  ) async {
    emit(const SceneState.loading());
    sceneCbj = event.sceneCbj;
    emit(SceneState.loaded(sceneCbj));
  }

  Future<void> _activateScene(
    ActivateScene event,
    Emitter<SceneState> emit,
  ) async {
    _iSceneRepository.activateScenes([sceneCbj].toImmutableList());
  }
}
