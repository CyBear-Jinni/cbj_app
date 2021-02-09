import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cybear_jinni/domain/folder_of_scenes/i_folder_of_scenes_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'folder_of_scenes_bloc.freezed.dart';
part 'folder_of_scenes_event.dart';
part 'folder_of_scenes_state.dart';

@injectable
class FolderOfScenesBloc
    extends Bloc<FolderOfScenesEvent, FolderOfScenesState> {
  FolderOfScenesBloc(this._iFolderOfScenesRepository)
      : super(FolderOfScenesState.initialized());

  final IFolderOfScenesRepository _iFolderOfScenesRepository;

  @override
  Stream<FolderOfScenesState> mapEventToState(
    FolderOfScenesEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        final scenesList =
            await _iFolderOfScenesRepository.getAllScenesInFolder();
        yield scenesList.fold(
          (_) => const FolderOfScenesState.error(),
          (_) => const FolderOfScenesState.loaded(),
        );
      },
    );
  }
}
