import 'package:flutter/material.dart';
import 'package:smart_home_flutter/ui/shared_widgets/add_new_devie_widget.dart';


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
              style: TextStyle(color: Theme.of(context).textTheme.body1.color),
            ),
            subtitle: Text(
              "Room " + index.toString(),
              style: TextStyle(color: Theme.of(context).textTheme.body1.color),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.edit,
                color: Theme.of(context).textTheme.body1.color,
              ),
              onPressed: () {},
            ),
          ),
          Divider(
            color: Theme.of(context).textTheme.body1.color,
          ),
        ],
      );
    }

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).accentColor,
          ]),
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
                  icon: Icon(Icons.arrow_back,
                      color: Theme.of(context).textTheme.body1.color),
                  onPressed: () => Navigator.pop(context),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.green,
                    size: 35,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AddNewDeviceWidgetPopup();
                      },
                    );
                  },
                ),
              ],
            ),
            Text(
              'Settings Page',
              style: TextStyle(
                  fontSize: 23.0,
                  color: Theme.of(context).textTheme.body1.color,
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
