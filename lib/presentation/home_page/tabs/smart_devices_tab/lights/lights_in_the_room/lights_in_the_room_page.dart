import 'package:cybear_jinni/infrastructure/objects/smart_device/smart_room_object.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/lights/room_lights_toggles_block.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Page to show all the lights in selected room
class LightsInTheRoomPage extends StatelessWidget {
  LightsInTheRoomPage({@required this.thisSmartRoom});

  final SmartRoomObject thisSmartRoom;
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
              Theme.of(context).accentColor,
              Theme.of(context).accentColor,
              Theme.of(context).primaryColor
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            TopNavigationBar(
              thisSmartRoom.getRoomName(),
              FontAwesomeIcons.cog,
              () {},
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                child: SingleChildScrollView(
                  child: RoomLightsTogglesBlock(thisSmartRoom),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
