import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/pages/device_full_screen_page/smart_plugs/settings_page_of_smart_plug.dart';
import 'package:cybear_jinni/presentation/pages/device_full_screen_page/smart_plugs/widgets/rooms_smart_plugs_widget.dart';
import 'package:cybear_jinni/presentation/pages/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// SmartPlugs page that will call the lamps widgets file and add background
/// and scaffold for it
@RoutePage()
class RoomsSmartPlugsPage extends StatelessWidget {
  const RoomsSmartPlugsPage({
    required this.roomEntity,
    this.roomColorGradiant,
  });

  /// If it have value will only show smartPlugs in this room
  final RoomEntity roomEntity;
  final ListOfColors? roomColorGradiant;

  void cogFunction(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => SettingsPageOfSmartPlugs(
          roomEntity: roomEntity,
        ),
      ),
    );
  }

  void backButtonFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: BackgroundGradient.getBackground(context),
        ),
        child: Column(
          children: [
            TopNavigationBar(
              pageName: 'SmartPlugs',
              rightIcon: null,
              rightIconFunction: cogFunction,
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
              backgroundColor: roomColorGradiant!.listOfColors!.last,
            ),
            Expanded(
              child: RoomsSmartPlugsWidget(
                roomEntity,
                roomColorGradiant!.listOfColors!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
