import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:cybear_jinni/application/folder_of_scenes/folder_of_scenes_bloc.dart';
import 'package:cybear_jinni/domain/folder_of_scenes/folder_of_scene.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/scenes/scene_tab/settings_page_of_scenes.dart';
import 'package:cybear_jinni/presentation/scenes/widgets/folder_of_scenes.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScenesPage extends StatelessWidget {
  ScenesPage(this.folderOfScenes);

  final FolderOfScenes folderOfScenes;

  /// Execute when user press the icon in top right side
  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
            title: '➕ Add Scene',
            onPressed: () {},
            textStyle: const TextStyle(color: Colors.green, fontSize: 23)),
        BottomSheetAction(
            title: '⚙️ Scenes Settings',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => SettingsPageOfScenes()),
              );
            },
            textStyle: const TextStyle(color: Colors.blueGrey, fontSize: 23)),
      ],
    );
  }

  void leftIconFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: BacgroundGradient.getBacground(context),
        ),
        child: Column(
          children: [
            TopNavigationBar(
              'Scenes in folder',
              Icons.more_vert,
              userCogFunction,
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: leftIconFunction,
              rightSecondIcon: FontAwesomeIcons.search,
              rightSecondFunction: () {},
            ),
            Expanded(
              child: BlocProvider(
                create: (context) => getIt<FolderOfScenesBloc>()
                  ..add(
                    FolderOfScenesEvent.initialized(folderOfScenes),
                  ),
                child: FolderOfScenesWidget(
                  folderOfScenes: folderOfScenes,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
