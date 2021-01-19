import 'package:cybear_jinni/features/home_page/tabs/smart_devices_tab/blinds/blinds_manager_widget.dart';
import 'package:cybear_jinni/features/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BlindsPage extends StatelessWidget {
  void backButtonFuntion(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              Theme
                  .of(context)
                  .accentColor,
              Theme
                  .of(context)
                  .accentColor,
              Theme
                  .of(context)
                  .primaryColor
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            TopNavigationBar(
              'Blinds',
              FontAwesomeIcons.cog,
              () {},
              backButtonFunction: backButtonFuntion,
            ),
            BlindsManagerWidget(),
          ],
        ),
      ),
    );
  }
}