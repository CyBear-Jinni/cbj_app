import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/home_page/bottom_navigation_bar_home_page.dart';
import 'package:cybear_jinni/presentation/home_page/left_navigation_drawer_home_page.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/linked_tab/linked_page.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/routine_tab/routines_page.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/scenes_in_folders_tab/scenes_in_folders_tab.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/smart_devices_widgets.dart';
import 'package:flutter/material.dart';

/// Home page to show all the tabs
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// Tab num, value will be the default tab to show
  int _currentTabNum = 0;
  final _pages = [
    ScenesInFoldersTab(),
    SmartDevicesWidgets(),
    RoutinesPage(),
    LinkedPage(),
  ];
  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void callback(int index) {
    setState(() {
      _currentTabNum = index;
      _pageController.animateToPage(_currentTabNum,
          duration: const Duration(milliseconds: 200), curve: Curves.linear);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: BacgroundGradient.getBacground(context),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: PageView(
          onPageChanged: (index) {
            setState(() {
              _currentTabNum = index;
            });
          },
          controller: _pageController,
          children: _pages,
        ),
        drawer: LeftNavigationDrawerHomePage(),
        bottomNavigationBar:
            BottomNavigationBarHomePage(callback, _currentTabNum),
      ),
    );
  }
}
