import 'package:cbj_integrations_controller/domain/scene/i_scene_cbj_repository.dart';
import 'package:cbj_integrations_controller/domain/scene/scene_cbj_entity.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/core/snack_bar_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kt_dart/collection.dart';

class SceneWidget extends StatefulWidget {
  const SceneWidget(this.currentScene);

  final SceneCbjEntity currentScene;

  @override
  State<SceneWidget> createState() => _SceneWidgetState();
}

class _SceneWidgetState extends State<SceneWidget> {
  late SceneCbjEntity sceneCbj;

  Future<void> _activateScene() async {
    ISceneCbjRepository.instance.activateScenes([sceneCbj].toImmutableList());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 0, 5, 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(
            int.parse(widget.currentScene.backgroundColor.getOrCrash()),
          ),
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
              color: Theme.of(context).textTheme.bodyLarge!.color!,
              width: 0.6,
            ),
          ),
        ),
        onPressed: () {
          HapticFeedback.lightImpact();

          SnackBarService().show(
            context,
            'Activating Scene',
          );
          _activateScene();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black54,
          ),
          alignment: Alignment.center,
          child: TextAtom(
            widget.currentScene.name.getOrCrash(),
            style: TextStyle(
              fontSize: 23,
              color: Theme.of(context).textTheme.bodyLarge!.color,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
