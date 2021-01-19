import 'package:cybear_jinni/features/home_page/tabs/smart_devices_tab/lights/lights_in_the_room/lights_in_the_room_widget.dart';
import 'package:cybear_jinni/features/shared_widgets/top_navigation_bar.dart';
import 'package:cybear_jinni/objects/interface_darta/cloud_interface_data.dart';
import 'package:cybear_jinni/objects/smart_device/smart_device_object.dart';
import 'package:cybear_jinni/objects/smart_device/smart_room_object.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Page to show all the lights in selected room
class LightsInTheRoomPage extends StatelessWidget {
  LightsInTheRoomPage(this.roomName) {
    for (SmartRoomObject smartRoomObject in rooms) {
      if (smartRoomObject.getRoomName() == roomName) {
        thisSmartRoom = smartRoomObject;
        break;
      }
    }

    thisSmartRoom.getLights().forEach((SmartDeviceObject element) {
      productsInThisRoom.add({
        'title'.tr(): element.name,
        'number': thisSmartRoom.getLights().indexOf(element)
      });
    });
  }

  final String roomName;
  SmartRoomObject thisSmartRoom;
  final List<Map<String, dynamic>> productsInThisRoom =
      <Map<String, dynamic>>[];

  void backButtonFunction(BuildContext context) {
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
              roomName,
              FontAwesomeIcons.cog,
              () {},
              backButtonFunction: backButtonFunction,
            ),
            LightsInTheRoomWidget(
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
