import 'package:cybearjinni/features/shared_widgets/add_new_devie_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsPageOfLamps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget tile(int index) {
      return Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/logo.png'),
            ),
            title: Text(
              "Light " + index.toString(),
              style:
                  TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
            ),
            subtitle: Text(
              "Room " + index.toString(),
              style:
                  TextStyle(color: Theme.of(context).textTheme.bodyText1.color),
            ),
            trailing: IconButton(
              icon: Icon(
                FontAwesomeIcons.pen,
                color: Theme.of(context).textTheme.bodyText1.color,
              ),
              onPressed: () {},
            ),
          ),
          Divider(
            color: Theme.of(context).textTheme.bodyText1.color,
          ),
        ],
      );
    }

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add), //  FontAwesomeIcons.plus,
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AddNewDeviceWidgetPopup();
            },
          );
        },
      ),
      body: Container(
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
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(FontAwesomeIcons.arrowLeft,
                      color: Theme.of(context).textTheme.bodyText1.color),
                  onPressed: () => Navigator.pop(context),
                ),
//                IconButton(
//                  icon: Icon(
//                    FontAwesomeIcons.plus,
//                    color: Colors.green,
//                    size: 25,
//                  ),
//                  onPressed: () {
//                    showDialog(
//                      context: context,
//                      builder: (BuildContext context) {
//                        return AddNewDeviceWidgetPopup();
//                      },
//                    );
//                  },
//                ),
              ],
            ),
            Text(
              'Lamps Settings Page',
              style: TextStyle(
                  fontSize: 23.0,
                  color: Theme.of(context).textTheme.bodyText1.color,
                  decoration: TextDecoration.underline),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    key: Key(index.toString()),
                    onDismissed: (DismissDirection direction) {
                      if (direction == DismissDirection.endToStart) {
                        print('Delete the card');
                      }
                    },
                    background: Container(
                      color: Colors.red,
                    ),
                    child: tile(index),
                  );
                },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
