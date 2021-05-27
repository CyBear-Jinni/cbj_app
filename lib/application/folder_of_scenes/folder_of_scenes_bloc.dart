import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/folder_of_scenes/folder_of_scene.dart';
import 'package:cybear_jinni/domain/folder_of_scenes/i_folder_of_scenes_repository.dart';
import 'package:cybear_jinni/domain/scene/scene.dart';
import 'package:cybear_jinni/domain/scene/scene_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'folder_of_scenes_bloc.freezed.dart';
part 'folder_of_scenes_event.dart';
part 'folder_of_scenes_state.dart';

@injectable
class FolderOfScenesBloc
    extends Bloc<FolderOfScenesEvent, FolderOfScenesState> {
  FolderOfScenesBloc(this.iFolderOfScenesRepository)
      : super(FolderOfScenesState.initialized());

  final IFolderOfScenesRepository iFolderOfScenesRepository;

  @override
  Stream<FolderOfScenesState> mapEventToState(
    FolderOfScenesEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        final scenesList = await iFolderOfScenesRepository.getAllScenesInFolder(
          uniqueId: (event.folderOfScenes!.id)!,
        );
        yield scenesList.fold(
          (_) => const FolderOfScenesState.error(),
          (scenesList) => FolderOfScenesState.loaded(scenesList: scenesList),
        );
      },
    );
  }
}
