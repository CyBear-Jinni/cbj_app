import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/domain/routine/i_routine_cbj_repository.dart';
import 'package:cbj_integrations_controller/domain/routine/routine_cbj_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'folder_of_routines_bloc.freezed.dart';
part 'folder_of_routines_event.dart';
part 'folder_of_routines_state.dart';

@injectable
class FolderOfRoutinesBloc
    extends Bloc<FolderOfRoutinesEvent, FolderOfRoutinesState> {
  FolderOfRoutinesBloc(this._iRoutineRepository)
      : super(FolderOfRoutinesState.initialized()) {
    on<Initialized>(_initialized);
  }

  final IRoutineCbjRepository _iRoutineRepository;
  late RoomEntity folderOfRoutines;

  List<RoutineCbjEntity> allRoutinesInTheRoom = [];

  Future<void> _initialized(
    Initialized event,
    Emitter<FolderOfRoutinesState> emit,
  ) async {
    folderOfRoutines = event.folderOfRoutines;
    emit(const FolderOfRoutinesState.loading());

    final Map<String, RoutineCbjEntity> eitherAllRoutines =
        await IRoutineCbjRepository.instance.getAllRoutinesAsMap();
    for (final String routineId
        in folderOfRoutines.roomRoutinesId.getOrCrash()) {
      if (eitherAllRoutines.containsKey(routineId)) {
        allRoutinesInTheRoom.add(eitherAllRoutines[routineId]!);
      }
    }
    // eitherAllRoutines.fold((l) => null,
    //     (HashMap<String, RoutineCbjEntity> routinesList) {
    //   for (final String routineId
    //       in folderOfRoutines.roomRoutinesId.getOrCrash()) {
    //     if (routinesList.containsKey(routineId)) {
    //       allRoutinesInTheRoom.add(routinesList[routineId]!);
    //     }
    //   }
    // });
    if (allRoutinesInTheRoom.isEmpty) {
      emit(const FolderOfRoutinesState.loadedEmptyScens());
      return;
    }

    emit(FolderOfRoutinesState.loaded(routinesList: allRoutinesInTheRoom));
  }
}
