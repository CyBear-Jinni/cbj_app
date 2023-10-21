import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomNavigationBarHomePage extends StatelessWidget {
  const BottomNavigationBarHomePage(this.callback, this.pageIndex);

  final Function callback;

  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.grey[500],
      currentIndex: pageIndex,
      onTap: (value) {
        // ignore: avoid_dynamic_calls
        callback(value);
      },
      items: [
        BottomNavigationBarItem(
          activeIcon: Icon(MdiIcons.sitemap),
          icon: Icon(MdiIcons.sitemapOutline),
          label: 'Automations'.tr(),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(MdiIcons.lightbulbOn),
          icon: Icon(MdiIcons.lightbulbOutline),
          label: 'Devices'.tr(),
        ),
        // BottomNavigationBarItem(
        //   icon: const FaIcon(FontAwesomeIcons.history),
        //   label: 'Routines'.tr(),
        // ),
        // BottomNavigationBarItem(
        //   icon: const FaIcon(FontAwesomeIcons.link),
        //   label: 'Bindings'.tr(),
        // ),
      ],
    );
  }
}
