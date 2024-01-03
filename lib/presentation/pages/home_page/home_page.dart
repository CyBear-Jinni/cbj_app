import 'package:auto_route/auto_route.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/routes/app_router.gr.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:cybearjinni/presentation/pages/home_page/tabs/scenes_in_folders_tab/scenes_in_folders_tab.dart';
import 'package:cybearjinni/presentation/pages/home_page/tabs/smart_devices_tab/entities_by_area_tab.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

/// Home page to show all the tabs
@RoutePage()
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  /// Tab num, value will be the default tab to show
  int _currentTabNum = 1;
  final _pages = [
    ScenesInFoldersTab(),
    EntitiesByAreaTab(),
    // BindingsPage(),
  ];
  final _pageController = PageController(initialPage: 1);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  static List<BottomNavigationBarItemAtom> getBottomNavigationBarItems() {
    return [
      BottomNavigationBarItemAtom(
        activeIcon: Icon(MdiIcons.sitemap),
        icon: Icon(MdiIcons.sitemapOutline),
        label: 'Automations',
      ),
      BottomNavigationBarItemAtom(
        activeIcon: Icon(MdiIcons.lightbulbOn),
        icon: Icon(MdiIcons.lightbulbOutline),
        label: 'Entities',
      ),
      // BottomNavigationBarItemAtom(
      //   icon: const FaIcon(FontAwesomeIcons.history),
      //   label: 'Routines'.
      // ),
      // BottomNavigationBarItemAtom(
      //   icon: const FaIcon(FontAwesomeIcons.link),
      //   label: 'Bindings'.
      // ),
    ];
  }

  void changeByTabNumber(int index) {
    setState(() {
      _currentTabNum = index;
      _pageController.animateToPage(
        _currentTabNum,
        duration: const Duration(milliseconds: 200),
        curve: Curves.linear,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            body: PageView(
              onPageChanged: (index) {
                setState(() {
                  _currentTabNum = index;
                });
              },
              controller: _pageController,
              children: _pages,
            ),
            bottomNavigationBar: BottomNavigationBarMolecule(
              bottomNaviList: getBottomNavigationBarItems(),
              onTap: changeByTabNumber,
              pageIndex: _currentTabNum,
            ),
            // BottomNavigationBarHomePage(callback, _currentTabNum),
          ),
          Column(
            children: [
              const Expanded(
                child: TextAtom(''),
              ),
              SizedBox(
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.router.push(const PlusButtonRoute());
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.blue.withOpacity(0.9),
                        child: const FaIcon(
                          FontAwesomeIcons.plus,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
