import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/domain/scene/i_scene_cbj_repository.dart';
import 'package:cbj_integrations_controller/domain/scene/scene_cbj_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'folder_of_scenes_bloc.freezed.dart';
part 'folder_of_scenes_event.dart';
part 'folder_of_scenes_state.dart';

@injectable
class FolderOfScenesBloc
    extends Bloc<FolderOfScenesEvent, FolderOfScenesState> {
  FolderOfScenesBloc() : super(FolderOfScenesState.initialized()) {
    on<Initialized>(_initialized);
  }

  late RoomEntity folderOfScenes;

  List<SceneCbjEntity> allScenesInTheRoom = [];

  Future<void> _initialized(
    Initialized event,
    Emitter<FolderOfScenesState> emit,
  ) async {
    folderOfScenes = event.folderOfScenes;
    emit(const FolderOfScenesState.loading());

    final Map<String, SceneCbjEntity> eitherAllScenes =
        await ISceneCbjRepository.instance.getAllScenesAsMap();
    for (final String sceneId in folderOfScenes.roomScenesId.getOrCrash()) {
      if (eitherAllScenes.containsKey(sceneId)) {
        allScenesInTheRoom.add(eitherAllScenes[sceneId]!);
      }
    }

    // eitherAllScenes.fold((l) => null,
    //     (HashMap<String, SceneCbjEntity> scenesList) {
    //   for (final String sceneId in folderOfScenes.roomScenesId.getOrCrash()) {
    //     if (scenesList.containsKey(sceneId)) {
    //       allScenesInTheRoom.add(scenesList[sceneId]!);
    //     }
    //   }
    // });
    if (allScenesInTheRoom.isEmpty) {
      emit(const FolderOfScenesState.loadedEmptyScens());
      return;
    }

    emit(FolderOfScenesState.loaded(scenesList: allScenesInTheRoom));
  }
}
