import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/auth/auth_failure.dart';
import 'package:cybear_jinni/domain/scenes/scenes_in_folders/i_scenes_in_folders_repository.dart';
import 'package:cybear_jinni/domain/scenes/scenes_in_folders/scenes_in_folders.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'scenes_in_folders_bloc.freezed.dart';
part 'scenes_in_folders_event.dart';
part 'scenes_in_folders_state.dart';

@injectable
class ScenesInFoldersBloc
    extends Bloc<ScenesInFoldersEvent, ScenesInFoldersState> {
  ScenesInFoldersBloc(this._inFoldersRepository)
      : super(ScenesInFoldersState.initialized());

  final IIScenesInFoldersRepository _inFoldersRepository;

  @override
  Stream<ScenesInFoldersState> mapEventToState(
    ScenesInFoldersEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        final scenesRoomsList =
            await _inFoldersRepository.getAllRoomsWithScenes();
        yield scenesRoomsList.fold(
              (f) => const ScenesInFoldersState.error(),
          (scenesInRoomsList) => ScenesInFoldersState.loaded(scenesInRoomsList),
        );
      },
    );
  }
}
