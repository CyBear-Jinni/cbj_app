import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:cybear_jinni/application/folders_of_scenes/folders_of_scenes_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/scenes_in_folders_tab/widgets/scenes_in_folders_l.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScenesInFoldersTab extends StatelessWidget {
  /// Execute when user press the icon in top right side
  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
          title: const Text(
            '⚙️ Scenes Settings',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 23,
            ),
          ),
          onPressed: (_) {
            Fluttertoast.showToast(
              msg: 'Settings page will be added in the future',
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.CENTER,
              backgroundColor: Colors.blueGrey,
              textColor: Theme.of(context).textTheme.bodyText1!.color,
              fontSize: 16.0,
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
          pageName: 'Automations'.tr(),
          rightIcon: null,
          rightIconFunction: userCogFunction,
          leftIcon: FontAwesomeIcons.sitemap,
          leftIconFunction: (BuildContext context) {},
          // rightSecondIcon: FontAwesomeIcons.magnifyingGlass,
          // rightSecondFunction: rightSecondFunction,
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
