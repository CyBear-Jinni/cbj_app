import 'dart:ui';

import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/folder_of_scenes/folder_of_scenes_bloc.dart';
import 'package:cybear_jinni/domain/room/room_entity.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/pages/scenes/widgets/folder_of_scenes.dart';
import 'package:cybear_jinni/presentation/pages/shared_widgets/top_navigation_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          title: const Text(
            '➕ Add Automation',
            style: TextStyle(color: Colors.green, fontSize: 23),
          ),
          onPressed: (_) {},
        ),
        BottomSheetAction(
          title: const Text(
            '⚙️ Scenes Settings',
            style: TextStyle(color: Colors.blueGrey, fontSize: 23),
          ),
          onPressed: (_) {},
        ),
      ],
    );
  }

  void leftIconFunction(BuildContext context) {
    Navigator.pop(context);
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
                TopNavigationBar(
                  pageName: 'Scenes_In_Folder'.tr(),
                  rightIcon: null,
                  rightIconFunction: userCogFunction,
                  leftIcon: FontAwesomeIcons.arrowLeft,
                  leftIconFunction: leftIconFunction,
                  // rightSecondIcon: FontAwesomeIcons.magnifyingGlass,
                  // rightSecondFunction: () {},
                ),
                Expanded(
                  child: BlocProvider(
                    create: (context) => getIt<FolderOfScenesBloc>()
                      ..add(
                        FolderOfScenesEvent.initialized(
                          folderOfScenes: folderOfScenes,
                        ),
                      ),
                    child: FolderOfScenesWidget(
                      folderOfScenes: folderOfScenes,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
