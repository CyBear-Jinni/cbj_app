import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Bottom navigation bar for home page, will show all the tabs
class BottomNavigationBarHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: Colors.white,
      unselectedLabelColor: Theme.of(context).textTheme.bodyText2.color,
      labelColor: Theme.of(context).textTheme.bodyText1.color,
      tabs: <Widget>[
        Tab(
          icon: const FaIcon(FontAwesomeIcons.sitemap),
          child: const Text(
            'Scenes',
          ).tr(),
        ),
        Tab(
          icon: const FaIcon(FontAwesomeIcons.history),
          child: const Text(
            'Routines ',
          ).tr(),
        ),
        // Tab(
        //   icon: const FaIcon(FontAwesomeIcons.link),
        //   child: const Text(
        //     'Linked',
        //   ).tr(),
        // ),
        Tab(
          icon: const FaIcon(FontAwesomeIcons.solidLightbulb),
          child: const Text(
            'Devices',
          ).tr(),
        ),
      ],
    );
  }
}
