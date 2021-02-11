import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/blinds/blinds_manager_widget.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
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
          gradient: BacgroundGradient.getBacground(context),
        ),
        child: Column(
          children: <Widget>[
            TopNavigationBar(
              'Blinds',
              Icons.more_vert,
              () {},
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFuntion,
              rightSecondIcon: FontAwesomeIcons.search,
              rightSecondFunction: () {},
            ),
            BlindsManagerWidget(),
          ],
        ),
      ),
    );
  }
}
