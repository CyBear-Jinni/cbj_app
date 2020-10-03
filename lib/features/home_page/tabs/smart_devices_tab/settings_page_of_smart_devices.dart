import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsPageSmartDevices extends StatelessWidget {
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
            const Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: Icon(FontAwesomeIcons.arrowLeft,
                    color: Theme.of(context).textTheme.bodyText1.color),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Text(
              'Smart Devices Settings Page',
              style: TextStyle(
                  fontSize: 23.0,
                  color: Theme.of(context).textTheme.bodyText1.color,
                  decoration: TextDecoration.underline),
            ),
          ],
        ),
      ),
    );
  }
}
