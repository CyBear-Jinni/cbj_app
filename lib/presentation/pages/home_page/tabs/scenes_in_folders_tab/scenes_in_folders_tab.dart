import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/snack_bar_service.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:cybearjinni/presentation/pages/home_page/tabs/scenes_in_folders_tab/widgets/scenes_in_folders_l.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScenesInFoldersTab extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
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
          child: ScenesInFoldersL(),
        ),
      ],
    );
  }
}
