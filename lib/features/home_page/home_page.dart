import 'package:cybear_jinni/features/home_page/bottom_navigation_bar_home_page.dart';
import 'package:cybear_jinni/features/home_page/left_navigation_drawer_home_page.dart';
import 'package:cybear_jinni/features/home_page/tabs/routine_tab/routines_page.dart';
import 'package:cybear_jinni/features/home_page/tabs/scene_tab/scenes_widgets.dart';
import 'package:cybear_jinni/features/home_page/tabs/smart_devices_tab/smart_devices_widgets.dart';
import 'package:flutter/material.dart';

/// Home page to show all the tabs
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: const <double>[0, 0, 0, 1],
          colors: <Color>[
            Theme.of(context).primaryColor,
            Theme.of(context).accentColor,
            Theme.of(context).accentColor,
            Theme.of(context).primaryColor
          ],
        ),
      ),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: TabBarView(children: <Widget>[
            ScenesWidgets(),
            RoutinesPage(),
            SmartDevicesWidgets(),
          ]),
          drawer: LeftNavigationDrawerHomePage(),
          bottomNavigationBar: BottomNavigationBarHomePage(),
        ),
      ),
    );
  }
}
