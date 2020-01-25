import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_home_flutter/ui/home_page/tabs/history_tab/history_tab.dart';
import 'package:smart_home_flutter/ui/home_page/tabs/lamps_widgets/lamps_widgets.dart';
import 'package:smart_home_flutter/ui/home_page/tabs/presets_widgets/presets_widgets.dart';
import 'package:smart_home_flutter/ui/home_page/tabs/smart_devices_widgets/smart_devices_widgets.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        gradient: RadialGradient(colors: [
          Theme.of(context).primaryColor,
          Theme.of(context).accentColor,
        ]),
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
            unselectedLabelColor: Theme.of(context).textTheme.body2.color,
            labelColor: Theme.of(context).textTheme.body1.color,
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
