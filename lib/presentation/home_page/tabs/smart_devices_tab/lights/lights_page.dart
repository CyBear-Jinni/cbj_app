import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/lights/lights_widgets.dart';
import 'package:flutter/material.dart';

/// Lights page that will call the lamps widget file and add background
/// and scaffold for it
class LightsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: BacgroundGradient.getBacground(context),
        ),
        child: LightsWidgets(),
      ),
    );
  }
}
