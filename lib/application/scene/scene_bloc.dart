import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/scene/i_scene_repository.dart';
import 'package:cybear_jinni/domain/scene/scene.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'scene_bloc.freezed.dart';
part 'scene_event.dart';
part 'scene_state.dart';

@injectable
class SceneBloc extends Bloc<SceneEvent, SceneState> {
  SceneBloc(this._iSceneRepository) : super(SceneState.initialized());

  final ISceneRepository _iSceneRepository;

  @override
  Stream<SceneState> mapEventToState(
    SceneEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        final sceneList = await _iSceneRepository.getScene();
        yield sceneList.fold(
          (f) => const SceneState.error(),
          (foldersOfScenesList) => SceneState.loaded(foldersOfScenesList),
        );
      },
    );
  }
}
