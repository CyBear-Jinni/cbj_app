import 'package:flutter/material.dart';
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
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: TabBarView(children: [
            PresetsWidgets(),
            LampsWidgets(),
            SmartDevicesWidgets(),
          ]),
          bottomNavigationBar: TabBar(
            indicatorColor: Colors.black,
            unselectedLabelColor: Theme.of(context).textTheme.body2.color,
            labelColor: Theme.of(context).textTheme.body1.color,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.spa),
                child: Text(
                  'Presets',
                ),
              ),
              Tab(
                icon: Icon(Icons.devices),
                child: Text(
                  'Lamps',
                ),
              ),
              Tab(
                icon: Icon(Icons.opacity),
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
