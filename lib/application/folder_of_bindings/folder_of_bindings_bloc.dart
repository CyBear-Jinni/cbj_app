import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cbj_integrations_controller/domain/binding/binding_cbj_entity.dart';
import 'package:cbj_integrations_controller/domain/binding/i_binding_cbj_repository.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'folder_of_bindings_bloc.freezed.dart';
part 'folder_of_bindings_event.dart';
part 'folder_of_bindings_state.dart';

@injectable
class FolderOfBindingsBloc
    extends Bloc<FolderOfBindingsEvent, FolderOfBindingsState> {
  FolderOfBindingsBloc(this._iBindingRepository)
      : super(FolderOfBindingsState.initialized()) {
    on<Initialized>(_initialized);
  }

  final IBindingCbjRepository _iBindingRepository;
  late RoomEntity folderOfBindings;

  List<BindingCbjEntity> allBindingsInTheRoom = [];

  Future<void> _initialized(
    Initialized event,
    Emitter<FolderOfBindingsState> emit,
  ) async {
    folderOfBindings = event.folderOfBindings;
    emit(const FolderOfBindingsState.loading());

    final Map<String, BindingCbjEntity> eitherAllBindings =
        await IBindingCbjRepository.instance.getAllBindingsAsMap();
    for (final String bindingId
        in folderOfBindings.roomBindingsId.getOrCrash()) {
      if (eitherAllBindings.containsKey(bindingId)) {
        allBindingsInTheRoom.add(eitherAllBindings[bindingId]!);
      }
    }
    // eitherAllBindings.fold((l) => null,
    //     (HashMap<String, BindingCbjEntity> bindingsList) {
    //   for (final String bindingId
    //       in folderOfBindings.roomBindingsId.getOrCrash()) {
    //     if (bindingsList.containsKey(bindingId)) {
    //       allBindingsInTheRoom.add(bindingsList[bindingId]!);
    //     }
    //   }
    // });
    if (allBindingsInTheRoom.isEmpty) {
      emit(const FolderOfBindingsState.loadedEmptyScens());
      return;
    }

    emit(FolderOfBindingsState.loaded(bindingsList: allBindingsInTheRoom));
  }
}
