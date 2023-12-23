import 'dart:ui';

import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:cybearjinni/presentation/pages/scenes/widgets/folder_of_scenes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class ScenesPage extends StatelessWidget {
  const ScenesPage(this.folderOfScenes);

  final RoomEntity folderOfScenes;

  /// Execute when user press the icon in top right side
  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
          title: const TextAtom(
            '➕ Add Automation',
            style: TextStyle(color: Colors.green, fontSize: 23),
          ),
          onPressed: (_) {},
        ),
        BottomSheetAction(
          title: const TextAtom(
            '⚙️ Scenes Settings',
            style: TextStyle(color: Colors.blueGrey, fontSize: 23),
          ),
          onPressed: (_) {},
        ),
      ],
    );
  }

  void leftIconFunction(BuildContext context) {
    context.router.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              folderOfScenes.background.getOrCrash(),
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: ColoredBox(
            color: Colors.black12,
            child: Column(
              children: [
                TopBarMolecule(
                  pageName: 'Scenes_In_Folder',

                  rightIconFunction: userCogFunction,
                  leftIcon: FontAwesomeIcons.arrowLeft,
                  leftIconFunction: leftIconFunction,
                  // rightSecondIcon: FontAwesomeIcons.magnifyingGlass,
                  //
                ),
                Expanded(
                  child: FolderOfScenesWidget(folderOfScenes: folderOfScenes),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
