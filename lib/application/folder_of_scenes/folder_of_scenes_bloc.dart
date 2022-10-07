import 'dart:async';
import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/domain/scene/i_scene_cbj_repository.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj_entity.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'folder_of_scenes_bloc.freezed.dart';
part 'folder_of_scenes_event.dart';
part 'folder_of_scenes_state.dart';

@injectable
class FolderOfScenesBloc
    extends Bloc<FolderOfScenesEvent, FolderOfScenesState> {
  FolderOfScenesBloc(this._iSceneRepository)
      : super(FolderOfScenesState.initialized()) {
    on<Initialized>(_initialized);
  }

  final ISceneCbjRepository _iSceneRepository;
  late RoomEntity folderOfScenes;

  List<SceneCbjEntity> allScenesInTheRoom = [];

  Future<void> _initialized(
    Initialized event,
    Emitter<FolderOfScenesState> emit,
  ) async {
    folderOfScenes = event.folderOfScenes;
    emit(const FolderOfScenesState.loading());

    final Either<SceneCbjFailure, HashMap<String, SceneCbjEntity>>
        eitherAllScenes = await _iSceneRepository.getAllScenesAsMap();
    eitherAllScenes.fold((l) => null,
        (HashMap<String, SceneCbjEntity> scenesList) {
      for (final String sceneId in folderOfScenes.roomScenesId.getOrCrash()) {
        if (scenesList.containsKey(sceneId)) {
          allScenesInTheRoom.add(scenesList[sceneId]!);
        }
      }
    });
    if (allScenesInTheRoom.isEmpty) {
      emit(const FolderOfScenesState.loadedEmptyScens());
      return;
    }

    emit(FolderOfScenesState.loaded(scenesList: allScenesInTheRoom));
  }
}
