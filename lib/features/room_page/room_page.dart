import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../objects/interface_darta/cloud_interface_data.dart';
import '../../objects/smart_device/smart_device_object.dart';
import '../../objects/smart_device/smart_room_object.dart';
import 'room_widget.dart';

class RoomPage extends StatelessWidget {
  final String roomName;
  SmartRoomObject thisSmartRoom;
  final List<Map<String, dynamic>> productsInThisRoom =
      List<Map<String, dynamic>>();

  RoomPage(this.roomName) {
    for (SmartRoomObject smartRoomObject in rooms) {
      if (smartRoomObject.getRoomName() == roomName) {
        thisSmartRoom = smartRoomObject;
        break;
      }
    }

    thisSmartRoom.getLights().forEach((SmartDeviceObject element) {
      productsInThisRoom.add({
        'title': element.name,
        'number': thisSmartRoom.getLights().indexOf(element)
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: Icon(FontAwesomeIcons.arrowLeft,
                    color: Theme.of(context).textTheme.bodyText1.color),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Text(
              roomName,
              style: TextStyle(
                  fontSize: 23.0,
                  color: Theme.of(context).textTheme.bodyText1.color,
                  decoration: TextDecoration.underline),
            ),

            RoomWidget(
              productsInThisRoom.toList(),
                  () {},
                  () {},
            ),
          ],
        ),
      ),
    );
  }
}
