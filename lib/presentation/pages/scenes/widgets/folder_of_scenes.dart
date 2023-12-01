import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cbj_integrations_controller/domain/scene/i_scene_cbj_repository.dart';
import 'package:cbj_integrations_controller/domain/scene/scene_cbj_entity.dart';
import 'package:cbj_integrations_controller/domain/scene/scene_cbj_failures.dart';
import 'package:cybear_jinni/application/scene/scene_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/scenes/widgets/scene_widget.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FolderOfScenesWidget extends StatefulWidget {
  const FolderOfScenesWidget({required this.folderOfScenes});

  final RoomEntity folderOfScenes;

  @override
  State<FolderOfScenesWidget> createState() => _FolderOfScenesWidgetState();
}

class _FolderOfScenesWidgetState extends State<FolderOfScenesWidget> {
  late RoomEntity folderOfScenes;

  List<SceneCbjEntity> allScenesInTheRoom = [];
  List<SceneCbjEntity>? scenesList;

  @override
  void initState() {
    super.initState();
    _initialized();
  }

  Future<void> _initialized() async {
    folderOfScenes = widget.folderOfScenes;

    final Map<String, SceneCbjEntity> eitherAllScenes =
        await ISceneCbjRepository.instance.getAllScenesAsMap();
    for (final String sceneId in folderOfScenes.roomScenesId.getOrCrash()) {
      if (eitherAllScenes.containsKey(sceneId)) {
        allScenesInTheRoom.add(eitherAllScenes[sceneId]!);
      }
    }

    if (allScenesInTheRoom.isEmpty) {
      return;
    }

    setState(() {
      scenesList = allScenesInTheRoom;
    });
  }

  SceneCbjEntity getTheScene(
    dartz.Either<SceneCbjFailure, SceneCbjEntity> scenesList,
  ) {
    return scenesList.fold((l) => throw 'Invalid value', (r) => r);
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    int gridCrossAxisCount = 2;
    if (screenSize.width > 700) {
      gridCrossAxisCount = 4;
    }
    if (scenesList == null) {
      return const CircularProgressIndicatorAtom();
    }
    if (scenesList!.isEmpty || allScenesInTheRoom.isEmpty) {
      return const Center(
        child: TextAtom(
          'You can add automations in the plus button',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      );
    }
    return GridView.builder(
      reverse: true,
      itemBuilder: (context, index) {
        final SceneCbjEntity sceneCbj = scenesList![index];
        return BlocProvider(
          create: (context) => getIt<SceneBloc>()
            ..add(
              SceneEvent.initialized(
                sceneCbj: sceneCbj,
              ),
            ),
          child: SceneWidget(sceneCbj),
        );
      },
      itemCount: scenesList!.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: gridCrossAxisCount,
      ),
    );
  }
}
