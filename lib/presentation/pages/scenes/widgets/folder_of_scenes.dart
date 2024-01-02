import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/pages/scenes/widgets/scene_widget.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';

class FolderOfScenesWidget extends StatefulWidget {
  const FolderOfScenesWidget({required this.folderOfScenes});

  final AreaEntity folderOfScenes;

  @override
  State<FolderOfScenesWidget> createState() => _FolderOfScenesWidgetState();
}

class _FolderOfScenesWidgetState extends State<FolderOfScenesWidget> {
  late AreaEntity folderOfScenes;

  List<SceneCbjEntity> allScenesInTheArea = [];
  List<SceneCbjEntity>? scenesList;

  late SceneCbjEntity sceneCbj;

  @override
  void initState() {
    super.initState();
    _initialized();
  }

  Future<void> _initialized() async {
    folderOfScenes = widget.folderOfScenes;

    final Map<String, SceneCbjEntity> eitherAllScenes =
        await ISceneCbjRepository.instance.getAllScenesAsMap();
    for (final String sceneId in folderOfScenes.areaScenesId.getOrCrash()) {
      if (eitherAllScenes.containsKey(sceneId)) {
        allScenesInTheArea.add(eitherAllScenes[sceneId]!);
      }
    }

    if (allScenesInTheArea.isEmpty) {
      return;
    }

    setState(() {
      scenesList = allScenesInTheArea;
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
    if (scenesList!.isEmpty || allScenesInTheArea.isEmpty) {
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
        return SceneWidget(sceneCbj);
      },
      itemCount: scenesList!.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: gridCrossAxisCount,
      ),
    );
  }
}
