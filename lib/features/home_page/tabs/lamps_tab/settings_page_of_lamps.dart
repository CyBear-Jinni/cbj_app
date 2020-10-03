import 'package:CyBearJinni/features/shared_widgets/add_new_devie_widget.dart';
import 'package:CyBearJinni/objects/interface_darta/cloud_interface_data.dart';
import 'package:CyBearJinni/objects/smart_device/smart_device_object.dart';
import 'package:CyBearJinni/objects/smart_device/smart_room_object.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsPageOfLamps extends StatelessWidget {
  SettingsPageOfLamps() {
    for (final SmartRoomObject smartRoomObject in rooms) {
      for (final SmartDeviceObject smartLightObject
          in smartRoomObject.getLights()) {
        allSmartDeviceLightDevices.add(smartLightObject);
      }
    }
  }

  final List<SmartDeviceObject> allSmartDeviceLightDevices =
      <SmartDeviceObject>[];

  @override
  Widget build(BuildContext context) {
    Widget tile(String roomName, String lightName) {
      return Column(
        children: <Widget>[
          ListTile(
            leading: const CircleAvatar(
              child: Icon(FontAwesomeIcons.solidLightbulb),
            ),
            title: Text(
              'Name: $lightName',
              style:
              TextStyle(color: Theme
                  .of(context)
                  .textTheme
                  .bodyText1
                  .color),
            ),
            subtitle: Text(
              'Room: $roomName',
              style:
              TextStyle(color: Theme
                  .of(context)
                  .textTheme
                  .bodyText1
                  .color),
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
      floatingActionButton: FloatingActionButton( //  FontAwesomeIcons.plus,
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AddNewDeviceWidgetPopup();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: const <double>[0, 0, 0, 1],
            colors: <Color>[
              Theme
                  .of(context)
                  .primaryColor,
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
            const Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(FontAwesomeIcons.arrowLeft,
                      color: Theme
                          .of(context)
                          .textTheme
                          .bodyText1
                          .color),
                  onPressed: () => Navigator.pop(context),
                ),
                IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.search,
                    color: Colors.white,
                    size: 25,
                  ),
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: 'Search',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        backgroundColor: Colors.blueGrey,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                ),
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
                    child: tile(allSmartDeviceLightDevices[index].roomName,
                        allSmartDeviceLightDevices[index].name),
                  );
                },
                itemCount: allSmartDeviceLightDevices.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}