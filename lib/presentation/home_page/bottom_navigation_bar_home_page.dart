import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigationBarHomePage extends StatelessWidget {
  const BottomNavigationBarHomePage(this.callback, this.pageIndex);

  final Function callback;

  ///
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.grey[500],
      currentIndex: pageIndex,
      onTap: (value) => callback(value),
      items: [
        BottomNavigationBarItem(
          icon: const FaIcon(FontAwesomeIcons.sitemap),
          label: 'Scenes'.tr(),
        ),
        BottomNavigationBarItem(
          icon: const FaIcon(FontAwesomeIcons.solidLightbulb),
          label: 'Devices'.tr(),
        ),
        BottomNavigationBarItem(
          icon: const FaIcon(FontAwesomeIcons.history),
          label: 'Routines'.tr(),
        ),
        // BottomNavigationBarItem(
        //   icon: const FaIcon(FontAwesomeIcons.link),
        //   label: 'Linked'.tr(),
        // ),
      ],
    );
  }
}
