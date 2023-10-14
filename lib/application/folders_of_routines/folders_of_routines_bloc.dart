import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/domain/room/i_room_repository.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/domain/room/room_failures.dart';
import 'package:cbj_integrations_controller/domain/routine/i_routine_cbj_repository.dart';
import 'package:cbj_integrations_controller/domain/routine/routine_cbj_entity.dart';
import 'package:cbj_integrations_controller/domain/routine/routine_cbj_failures.dart';
import 'package:cybear_jinni/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'folders_of_routines_bloc.freezed.dart';
part 'folders_of_routines_event.dart';
part 'folders_of_routines_state.dart';

@injectable
class FoldersOfRoutinesBloc
    extends Bloc<FoldersOfRoutinesEvent, FoldersOfRoutinesState> {
  FoldersOfRoutinesBloc(this._roomRepository, this._iRoutinesRepository)
      : super(FoldersOfRoutinesState.initialized()) {
    on<Initialized>(_initialized);
  }

  final IRoutineCbjRepository _iRoutinesRepository;

  final IRoomRepository _roomRepository;

  List<RoutineCbjEntity> allRoutines = <RoutineCbjEntity>[];
  List<RoomEntity> allRoomsWithRoutines = <RoomEntity>[];

  Future<void> _initialized(
    Initialized event,
    Emitter<FoldersOfRoutinesState> emit,
  ) async {
    emit(const FoldersOfRoutinesState.loading());

    final Either<RoutineCbjFailure, KtList<RoutineCbjEntity>>
        eitherAllRoutines = await _iRoutinesRepository.getAllRoutinesAsList();
    eitherAllRoutines.fold((l) => null, (r) {
      allRoutines.addAll(r.asList());
    });
    if (allRoutines.isEmpty) {
      return;
    }

    final Either<RoomFailure, KtList<RoomEntity>> eitherAllRooms =
        await _roomRepository.getAllRooms();
    eitherAllRooms.fold((l) => null, (KtList<RoomEntity> r) {
      for (final RoomEntity rE in r.asList()) {
        if (rE.roomRoutinesId.getOrCrash().isNotEmpty) {
          allRoomsWithRoutines.add(rE);
        }
      }
    });

    if (allRoomsWithRoutines.isEmpty) {
      emit(const FoldersOfRoutinesState.loadedEmpty());

      return;
    }

    emit(FoldersOfRoutinesState.loaded(allRoomsWithRoutines));
  }
}
