import 'package:CyBearJinni/features/home_page/tabs/history_tab/history_tab.dart';
import 'package:CyBearJinni/features/home_page/tabs/lamps_tab/lamps_widgets.dart';
import 'package:CyBearJinni/features/home_page/tabs/scene_tab/scenes_widgets.dart';
import 'package:CyBearJinni/features/home_page/tabs/smart_devices_tab/smart_devices_widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(5.0),
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
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: TabBarView(children: [
            HistoryTab(),
            ScenesWidgets(),
            LampsWidgets(),
            SmartDevicesWidgets(),
          ]),
          bottomNavigationBar: TabBar(
            indicatorColor: Colors.white,
            unselectedLabelColor: Theme.of(context).textTheme.bodyText2.color,
            labelColor: Theme.of(context).textTheme.bodyText1.color,
            tabs: <Widget>[
              Tab(
                icon: const Icon(FontAwesomeIcons.history),
                child: const Text(
                  'History',
                ).tr(),
              ),
              Tab(
                icon: const Icon(FontAwesomeIcons.cube),
                child: const Text(
                  'Scene',
                ).tr(),
              ),
              Tab(
                icon: const Icon(FontAwesomeIcons.solidLightbulb),
                child: const Text(
                  'Lamps',
                ).tr(),
              ),
              Tab(
                icon: const Icon(FontAwesomeIcons.satelliteDish),
                child: const Text(
                  'Devices',
                ).tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
