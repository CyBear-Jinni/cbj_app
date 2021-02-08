import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/auth/auth_failure.dart';
import 'package:cybear_jinni/domain/folders_of_scenes/folders_of_scenes.dart';
import 'package:cybear_jinni/domain/folders_of_scenes/i_folders_of_scenes_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'folders_of_scenes_bloc.freezed.dart';

part 'folders_of_scenes_event.dart';

part 'folders_of_scenes_state.dart';

@injectable
class FoldersOfScenesBloc
    extends Bloc<FoldersOfScenesEvent, FoldersOfScenesState> {
  FoldersOfScenesBloc(this._inFoldersRepository)
      : super(FoldersOfScenesState.initialized());

  final IIFoldersOfScenesRepository _inFoldersRepository;

  @override
  Stream<FoldersOfScenesState> mapEventToState(
    FoldersOfScenesEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        final scenesRoomsList =
            await _inFoldersRepository.getAllRoomsWithScenes();
        yield scenesRoomsList.fold(
          (f) => const FoldersOfScenesState.error(),
          (foldersOfScenesList) =>
              FoldersOfScenesState.loaded(foldersOfScenesList),
        );
      },
    );
  }
}
