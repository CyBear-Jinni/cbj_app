import 'package:cybear_jinni/presentation/home_page/bottom_navigation_bar_home_page.dart';
import 'package:cybear_jinni/presentation/home_page/left_navigation_drawer_home_page.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/scene_tab/scenes_widgets.dart';
import 'package:flutter/material.dart';

/// Home page to show all the tabs
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget childWidget = ScenesWidgets();

  void callback(Widget nextPage) {
    setState(() {
      childWidget = nextPage;
    });
  }

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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: childWidget,
        drawer: LeftNavigationDrawerHomePage(),
        bottomNavigationBar: BottomNavigationBarHomePage(callback),
      ),
    );
  }
}
