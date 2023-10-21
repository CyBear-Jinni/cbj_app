import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/domain/binding/binding_cbj_entity.dart';
import 'package:cbj_integrations_controller/domain/binding/i_binding_cbj_repository.dart';
import 'package:cbj_integrations_controller/domain/room/i_room_repository.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/domain/room/room_failures.dart';
import 'package:cybear_jinni/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'folders_of_bindings_bloc.freezed.dart';
part 'folders_of_bindings_event.dart';
part 'folders_of_bindings_state.dart';

@injectable
class FoldersOfBindingsBloc
    extends Bloc<FoldersOfBindingsEvent, FoldersOfBindingsState> {
  FoldersOfBindingsBloc() : super(FoldersOfBindingsState.initialized()) {
    on<Initialized>(_initialized);
  }

  List<BindingCbjEntity> allBindings = <BindingCbjEntity>[];
  List<RoomEntity> allRoomsWithBindings = <RoomEntity>[];

  Future<void> _initialized(
    Initialized event,
    Emitter<FoldersOfBindingsState> emit,
  ) async {
    emit(const FoldersOfBindingsState.loading());

    final List<BindingCbjEntity> eitherAllBindings =
        await IBindingCbjRepository.instance.getAllBindingsAsList();
    allBindings.addAll(eitherAllBindings);

    // eitherAllBindings.fold((l) => null, (r) {
    //   allBindings.addAll(r.asList());
    // });
    if (allBindings.isEmpty) {
      return;
    }

    final Either<RoomFailure, KtList<RoomEntity>> eitherAllRooms =
        await IRoomRepository.instance.getAllRooms();
    eitherAllRooms.fold((l) => null, (KtList<RoomEntity> r) {
      for (final RoomEntity rE in r.asList()) {
        if (rE.roomBindingsId.getOrCrash().isNotEmpty) {
          allRoomsWithBindings.add(rE);
        }
      }
    });

    if (allRoomsWithBindings.isEmpty) {
      emit(const FoldersOfBindingsState.loadedEmpty());

      return;
    }

    emit(FoldersOfBindingsState.loaded(allRoomsWithBindings));
  }
}
