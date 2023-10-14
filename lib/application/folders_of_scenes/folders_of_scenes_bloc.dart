import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/domain/room/i_room_repository.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/domain/room/room_failures.dart';
import 'package:cbj_integrations_controller/domain/scene/i_scene_cbj_repository.dart';
import 'package:cbj_integrations_controller/domain/scene/scene_cbj_entity.dart';
import 'package:cybear_jinni/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'folders_of_scenes_bloc.freezed.dart';
part 'folders_of_scenes_event.dart';
part 'folders_of_scenes_state.dart';

@injectable
class FoldersOfScenesBloc
    extends Bloc<FoldersOfScenesEvent, FoldersOfScenesState> {
  FoldersOfScenesBloc(this._iSceneRepository)
      : super(FoldersOfScenesState.initialized()) {
    on<Initialized>(_initialized);
  }

  final ISceneCbjRepository _iSceneRepository;

  List<SceneCbjEntity> allScenes = <SceneCbjEntity>[];
  List<RoomEntity> allRoomsWithScenes = <RoomEntity>[];

  Future<void> _initialized(
    Initialized event,
    Emitter<FoldersOfScenesState> emit,
  ) async {
    emit(const FoldersOfScenesState.loading());

    final List<SceneCbjEntity> eitherAllScenes =
        await ISceneCbjRepository.instance.getAllScenesAsList();
    allScenes.addAll(eitherAllScenes);

    // eitherAllScenes.fold((l) => null, (r) {
    //   allScenes.addAll(r.asList());
    // });
    if (allScenes.isEmpty) {
      return;
    }

    final Either<RoomFailure, KtList<RoomEntity>> eitherAllRooms =
        await IRoomRepository.instance.getAllRooms();
    eitherAllRooms.fold((l) => null, (KtList<RoomEntity> r) {
      for (final RoomEntity rE in r.asList()) {
        if (rE.roomScenesId.getOrCrash().isNotEmpty) {
          allRoomsWithScenes.add(rE);
        }
      }
    });

    if (allRoomsWithScenes.isEmpty) {
      emit(const FoldersOfScenesState.loadedEmpty());

      return;
    }

    emit(FoldersOfScenesState.loaded(allRoomsWithScenes));
  }
}
