import 'package:cybear_jinni/presentation/home_page/tabs/routine_tab/routines_page.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/scene_tab/scenes_widgets.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/smart_devices_widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigationBarHomePage extends StatefulWidget {
  const BottomNavigationBarHomePage(this.callback);

  final Function callback;

  @override
  State<StatefulWidget> createState() => _BottomNavigationBarHomePageState();
}

/// Bottom navigation bar for home page, will show all the tabs
class _BottomNavigationBarHomePageState
    extends State<BottomNavigationBarHomePage> {
  int currentIndex = 0;

  _BottomNavigationBarHomePageState();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.grey[500],
      currentIndex: currentIndex,
      onTap: (value) {
        currentIndex = value;

        switch (value) {
          case 0:
            widget.callback(ScenesWidgets());
            break;
          case 1:
            widget.callback(RoutinesPage());
            break;
          // case 2:
          //   widget.callback(RoutinesPage());
          //   break;
          case 2:
            widget.callback(SmartDevicesWidgets());
            break;
        }

        setState(() {});
      },
      items: [
        BottomNavigationBarItem(
          icon: const FaIcon(FontAwesomeIcons.sitemap),
          label: 'Scenes'.tr(),
        ),
        BottomNavigationBarItem(
          icon: const FaIcon(FontAwesomeIcons.history),
          label: 'Routines'.tr(),
        ),
        // BottomNavigationBarItem(
        //   icon: const FaIcon(FontAwesomeIcons.link),
        //   label: 'Linked'.tr(),
        // ),
        BottomNavigationBarItem(
          icon: const FaIcon(FontAwesomeIcons.solidLightbulb),
          label: 'Devices'.tr(),
        ),
      ],
    );
  }
}
