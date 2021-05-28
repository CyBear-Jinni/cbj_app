import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:cybear_jinni/application/folders_of_scenes/folders_of_scenes_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/scenes_in_folders_tab/widgets/scenes_in_folders_l.dart';
import 'package:cybear_jinni/presentation/scenes/scene_tab/settings_page_of_scenes.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScenesInFoldersTab extends StatelessWidget {
  /// Execute when user press the icon in top right side
  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
          title: const Text(
            '➕ Add Scene',
            style: TextStyle(color: Colors.green, fontSize: 23),
          ),
          onPressed: () {},
        ),
        BottomSheetAction(
          title: const Text(
            '⚙️ Scenes Settings',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 23,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => SettingsPageOfScenes(),
              ),
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
        TopNavigationBar(
          'Scenes',
          Icons.more_vert,
          userCogFunction,
          leftIcon: FontAwesomeIcons.userCog,
          leftIconFunction: leftIconFunction,
          rightSecondIcon: FontAwesomeIcons.search,
          rightSecondFunction: rightSecondFunction,
        ),
        const SizedBox(
          height: 7,
        ),
        Expanded(
          child: BlocProvider(
            create: (context) => getIt<FoldersOfScenesBloc>()
              ..add(const FoldersOfScenesEvent.initialized()),
            child: ScenesInFoldersL(),
          ),
        ),
      ],
    );
  }
}
