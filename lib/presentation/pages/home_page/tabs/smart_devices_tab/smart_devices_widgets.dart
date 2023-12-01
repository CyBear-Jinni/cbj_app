import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/change_room_for_devices/change_room_for_devices_page.dart';
import 'package:cybear_jinni/presentation/pages/home_page/tabs/smart_devices_tab/smart_devices_by_rooms.dart';
import 'package:cybear_jinni/presentation/pages/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmartDevicesWidgets extends StatelessWidget {
  /// Execute when user press the icon in top right side
  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
          title: const TextAtom(
            '⚙️ Change Area For Devices',
            style: TextStyle(color: Colors.blueGrey, fontSize: 23),
          ),
          onPressed: (_) {
            //
            // Fluttertoast.showToast(
            //   msg: 'Settings page will be added in the future',
            //   toastLength: Toast.LENGTH_LONG,
            //   gravity: ToastGravity.CENTER,
            //   backgroundColor: Colors.blueGrey,
            //   textColor: Theme.of(context).textTheme.bodyLarge!.color,
            //   fontSize: 16.0,
            // );
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => ChangeRoomForDevicesPage(),
              ),
            );
          },
        ),
      ],
    );
  }

  void leftIconFunction(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  void rightSecondFunction(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TopNavigationBar(
          pageName: 'Devices',
          rightIcon: Icons.more_vert,
          rightIconFunction: userCogFunction,
          leftIcon: FontAwesomeIcons.solidLightbulb,
          leftIconFunction: (BuildContext context) {},
          // rightSecondIcon: FontAwesomeIcons.magnifyingGlass,
          // rightSecondFunction: rightSecondFunction,
        ),
        Expanded(
          child: SmartDevicesByRooms(),
        ),
      ],
    );
  }
}
