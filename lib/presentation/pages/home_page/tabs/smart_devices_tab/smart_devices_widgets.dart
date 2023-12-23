import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cybearjinni/presentation/atoms/atoms.dart';
import 'package:cybearjinni/presentation/core/routes/app_router.gr.dart';
import 'package:cybearjinni/presentation/molecules/molecules.dart';
import 'package:cybearjinni/presentation/pages/home_page/tabs/smart_devices_tab/smart_devices_by_rooms.dart';
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
            context.router.push(const ChangeRoomForDevicesRoute());
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TopBarMolecule(
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
