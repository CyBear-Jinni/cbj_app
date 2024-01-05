import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:flutter/material.dart';

class ScenesGrid extends StatefulWidget {
  const ScenesGrid({required this.scenes});

  final List<SceneCbjEntity> scenes;

  @override
  State<ScenesGrid> createState() => _ScenesGridState();
}

class _ScenesGridState extends State<ScenesGrid> {
  late AreaEntity folderOfScenes;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    int gridCrossAxisCount = 2;
    if (screenSize.width > 700) {
      gridCrossAxisCount = 4;
    }

    if (widget.scenes.isEmpty) {
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
        final SceneCbjEntity sceneCbj = widget.scenes[index];
        return SceneAtom(sceneCbj);
      },
      itemCount: widget.scenes.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: gridCrossAxisCount,
      ),
    );
  }
}
