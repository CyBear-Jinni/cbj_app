import 'package:cybear_jinni/features/home_page/rooms_manager_widget.dart';
import 'package:cybear_jinni/features/home_page/tabs/smart_devices_tab/lights/settings_page_of_lights.dart';
import 'package:cybear_jinni/features/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LightsWidgets extends StatelessWidget {
  void cogFunction(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => SettingsPageOfLights()));
  }

  void backButtonFuntion(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TopNavigationBar(
          'Lights',
          FontAwesomeIcons.cog,
          cogFunction,
          backButtonFunction: backButtonFuntion,
        ),
        RoomsManagerWidget()
      ],
    );
  }
}
