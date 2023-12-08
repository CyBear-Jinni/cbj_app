import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/domain/device/i_device_repository.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/core/routes/app_router.gr.dart';
import 'package:cybear_jinni/presentation/pages/home_page/bottom_navigation_bar_home_page.dart';
import 'package:cybear_jinni/presentation/pages/home_page/tabs/scenes_in_folders_tab/scenes_in_folders_tab.dart';
import 'package:cybear_jinni/presentation/pages/home_page/tabs/smart_devices_tab/smart_devices_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Home page to show all the tabs
@RoutePage()
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    IDeviceRepository.instance.initiateHubConnection();

    super.initState();
  }

  /// Tab num, value will be the default tab to show
  int _currentTabNum = 1;
  final _pages = [
    ScenesInFoldersTab(),
    SmartDevicesWidgets(),
    // BindingsPage(),
  ];
  final _pageController = PageController(initialPage: 1);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void callback(int index) {
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
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color.fromRGBO(251, 245, 249, 1.0),
      child: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              toolbarHeight: 0,
              backgroundColor: Colors.white,
              systemOverlayStyle: SystemUiOverlayStyle.dark,
            ),
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
            bottomNavigationBar:
                BottomNavigationBarHomePage(callback, _currentTabNum),
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
