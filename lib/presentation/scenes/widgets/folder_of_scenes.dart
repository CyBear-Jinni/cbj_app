import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:cybear_jinni/application/folder_of_scenes/folder_of_scenes_bloc.dart';
import 'package:cybear_jinni/application/scene/scene_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/scenes/scene_tab/settings_page_of_scenes.dart';
import 'package:cybear_jinni/presentation/scenes/widgets/scene_widget.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FolderOfScenesWidget extends StatelessWidget {
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
    return BlocConsumer<FolderOfScenesBloc, FolderOfScenesState>(
      listener: (context, FolderOfScenesState state) {
        state.map(
          (value) => (v) {},
          loading: (loadingNow) {},
          error: (errorNow) {
            FlushbarHelper.createError(message: 'Error');
          },
          loaded: (_) => Text('sds'),
        );
      },
      builder: (context, state) {
        return Container(
          child: Column(
            children: [
              TopNavigationBar(
                'Scenes in folder',
                FontAwesomeIcons.userCog,
                userCogFunction,
                leftIcon: FontAwesomeIcons.arrowLeft,
                leftIconFunction: leftIconFunction,
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: GridView(
                    padding: const EdgeInsets.only(top: 10),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    children: [
                      BlocProvider(
                        create: (context) => getIt<SceneBloc>()
                          ..add(const SceneEvent.initialized()),
                        child: SceneWidget(),
                      ),
                      BlocProvider(
                        create: (context) => getIt<SceneBloc>()
                          ..add(const SceneEvent.initialized()),
                        child: SceneWidget(),
                      ),
                      BlocProvider(
                        create: (context) => getIt<SceneBloc>()
                          ..add(const SceneEvent.initialized()),
                        child: SceneWidget(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
