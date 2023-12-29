import 'package:auto_route/auto_route.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:cybearjinni/presentation/pages/change_room_for_devices/widgets/change_room_for_devices_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class ChangeRoomForDevicesPage extends StatelessWidget {
  void backButtonFunction(BuildContext context) {
    context.router.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBarMolecule(
            pageName: 'Change Area For Devices',
            leftIcon: FontAwesomeIcons.arrowLeft,
            leftIconFunction: backButtonFunction,
          ),
          ChangeRoomForDevicesWidget(),
        ],
      ),
    );
  }
}
