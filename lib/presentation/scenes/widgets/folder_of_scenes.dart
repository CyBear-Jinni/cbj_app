import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cybear_jinni/application/folder_of_scenes/folder_of_scenes_bloc.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj.dart';
import 'package:cybear_jinni/domain/scene/scene_cbj_failures.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/scenes/widgets/scene_widget.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FolderOfScenesWidget extends StatelessWidget {
  const FolderOfScenesWidget({required this.folderOfScenes});

  final RoomEntity folderOfScenes;

  SceneCbj getTheScen(Either<SceneCbjFailure, SceneCbj> scenesList) {
    return scenesList.fold((l) => null!, (r) => r);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FolderOfScenesBloc, FolderOfScenesState>(
      listener: (context, FolderOfScenesState state) {
        state.map(
          (value) => (v) {
            return const Text('value');
          },
          loading: (loadingNow) {
            return const Text('loading');
          },
          error: (errorNow) {
            FlushbarHelper.createError(message: 'Error');
          },
          loaded: (_) => const Text('Loaded'),
          loadedEmptyScens: (LoadedEmptyScens value) {},
        );
      },
      builder: (context, state) {
        return state.map(
          (value) => const Text('Start'),
          loading: (_) => const Text('loading'),
          loaded: (scenesList) {
            return GridView.builder(
              reverse: true,
              itemBuilder: (context, index) {
                final SceneCbj scene = scenesList.scenesList[index];
                return BlocProvider(
                  create: (context) => getIt<FolderOfScenesBloc>()
                    ..add(
                      FolderOfScenesEvent.initialized(
                        folderOfScenes: folderOfScenes,
                      ),
                    ),
                  child: SceneWidget(scene),
                );
              },
              itemCount: scenesList.scenesList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
            );
          },
          loadedEmptyScens: (LoadedEmptyScens value) {
            return const Center(
              child: Text(
                'You can add scene in the plus button',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            );
          },
          error: (_) => const Text('error'),
        );
      },
    );
  }
}
