import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cybear_jinni/application/folder_of_scenes/folder_of_scenes_bloc.dart';
import 'package:cybear_jinni/application/scene/scene_bloc.dart';
import 'package:cybear_jinni/domain/folder_of_scenes/folder_of_scene.dart';
import 'package:cybear_jinni/domain/scene/scene.dart';
import 'package:cybear_jinni/domain/scene/scene_failures.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/scenes/widgets/scene_widget.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FolderOfScenesWidget extends StatelessWidget {
  FolderOfScenesWidget({@required this.folderOfScenes});

  final FolderOfScenes folderOfScenes;

  Scene getTheScen(Either<SceneFailure, Scene> scenesList) {
    return scenesList.fold((l) => null, (r) => r);
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
                final scene = scenesList.scenesList[index];
                if (scene == null) {
                  return const Text('Error');
                } else {
                  return BlocProvider(
                    create: (context) => getIt<SceneBloc>()
                      ..add(
                        SceneEvent.initialized(
                          scene: getTheScen(scene),
                        ),
                      ),
                    child: SceneWidget(scene.fold((l) => null, (r) => r)),
                  );
                }
              },
              itemCount: scenesList.scenesList.size,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
            );
          },
          error: (_) => const Text('error'),
        );
      },
    );
  }
}
