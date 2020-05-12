import 'package:cybearjinni/features/home_page/tabs/history_tab/history_tab.dart';
import 'package:cybearjinni/features/home_page/tabs/lamps_tab/lamps_widgets.dart';
import 'package:cybearjinni/features/home_page/tabs/presets_tab/presets_widgets.dart';
import 'package:cybearjinni/features/home_page/tabs/smart_devices_tab/smart_devices_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0, 0, 0, 1],
          colors: [
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
            PresetsWidgets(),
            LampsWidgets(),
            SmartDevicesWidgets(),
          ]),
          bottomNavigationBar: TabBar(
            indicatorColor: Colors.white,
            unselectedLabelColor: Theme.of(context).textTheme.bodyText2.color,
            labelColor: Theme.of(context).textTheme.bodyText1.color,
            tabs: <Widget>[
              Tab(
                icon: Icon(FontAwesomeIcons.history),
                child: Text(
                  'History',
                ),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.cube),
                child: Text(
                  'Presets',
                ),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.solidLightbulb),
                child: Text(
                  'Lamps',
                ),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.satelliteDish),
                child: Text(
                  'Devices',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
