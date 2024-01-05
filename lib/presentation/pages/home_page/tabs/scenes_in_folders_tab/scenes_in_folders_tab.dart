import 'dart:collection';

import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:cybearjinni/domain/connections_service.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/snack_bar_service.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:cybearjinni/presentation/core/routes/app_router.gr.dart';

class ScenesInFoldersTab extends StatefulWidget {
  @override
  State<ScenesInFoldersTab> createState() => _ScenesInFoldersTabState();
}

class _ScenesInFoldersTabState extends State<ScenesInFoldersTab> {
  /// Execute when user press the icon in top right side
  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
          title: const TextAtom(
            '⚙️ Scenes Settings',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 23,
            ),
          ),
          onPressed: (_) {
            SnackBarService().show(
              context,
              'Settings page will be added in the future',
            );
          },
        ),
      ],
    );
  }

  void leftIconFunction(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  void rightSecondFunction(BuildContext context) {}

  HashMap<String, SceneCbjEntity>? scenes;

  @override
  void initState() {
    super.initState();
    _initialized();
  }

  Future<void> _initialized() async {
    final HashMap<String, SceneCbjEntity> scenecsTemp =
        await ConnectionsService.instance.getScenes();

    setState(() {
      scenes = scenecsTemp;
    });
  }

  Widget scenesFoldersWidget(
    BuildContext context,
    AreaEntity folderOfScenes,
  ) {
    const double borderRadius = 5;
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: NetworkImage(
            folderOfScenes.background.getOrCrash(),
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(borderRadius)),
        border: Border.all(
          color: Colors.black.withOpacity(0.7),
          width: 0.4,
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.zero,
          ),
        ),
        onPressed: () {
          context.router.push(
            ScenesRoute(
              area: folderOfScenes,
            ),
          );
        },
        child: Column(
          children: [
            const SizedBox(
              height: 130,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(borderRadius),
                  bottomLeft: Radius.circular(borderRadius),
                ),
              ),
              child: TextAtom(
                folderOfScenes.cbjEntityName.getOrCrash(),
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (scenes == null || scenes!.isEmpty) {
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

    return Column(
      children: <Widget>[
        TopBarMolecule(
          pageName: 'Automations',

          rightIconFunction: userCogFunction,
          leftIcon: FontAwesomeIcons.sitemap,
          leftIconFunction: (BuildContext context) {},
          // rightSecondIcon: FontAwesomeIcons.magnifyingGlass,
          // rightSecondFunction: rightSecondFunction,
        ),
        Expanded(
          child: ScenesGrid(
            scenes: scenes!.values.toList(),
          ),
        ),
        // TODO: Code for room folders
        // Expanded(
        //   child: ListView.builder(
        //     reverse: true,
        //     padding: EdgeInsets.zero,
        //     itemBuilder: (context, index) {
        //       final AreaEntity sceneFolder = scenes![index];
        //       return scenesFoldersWidget(
        //         context,
        //         sceneFolder,
        //       );
        //     },
        //     itemCount: allAreasWithScenes!.length,
        //   ),
        // ),
      ],
    );
  }
}
