import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:cybearjinni/presentation/pages/software_info/widgets/software_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class SoftwareInfoPage extends StatelessWidget {
  /// Execute when software nfo press the icon in top right side
  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
          title: const TextAtom(
            '➕ Add software nfo',
            style: TextStyle(color: Colors.green, fontSize: 23),
          ),
          onPressed: (_) {
            // context.router.push(const AddUserToHomeRoute());
          },
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
      body: Column(
        children: [
          TopBarMolecule(
            pageName: 'Software Info',
            rightIconFunction: userCogFunction,
            leftIcon: FontAwesomeIcons.arrowLeft,
            leftIconFunction: leftIconFunction,
          ),
          Expanded(
            child: SoftwareInfoWidget(),
          ),
        ],
      ),
    );
  }
}
