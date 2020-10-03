import 'package:CyBearJinni/features/home_page/smart_device_widget.dart';
import 'package:CyBearJinni/objects/interface_darta/cloud_interface_data.dart';
import 'package:flutter/material.dart';

class LightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Column(
          children: <Widget>[
            const SizedBox(
              width: 180,
              height: 300,
            ),
            const Text('This is firebase'),
            const SizedBox(
              height: 30,
            ),
            Text('Device with ip: ${rooms[0].getLights()[0].ip}'),
            SizedBox(
              width: 170,
              child: SmartDevicePage(rooms[0].getLights()[0]),
            ),
          ],
        ),
      ),
    );
  }
}
