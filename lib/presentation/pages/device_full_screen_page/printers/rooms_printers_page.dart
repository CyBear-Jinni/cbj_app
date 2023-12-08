import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/room/room_entity.dart';
import 'package:cybear_jinni/presentation/core/routes/app_router.gr.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';
import 'package:cybear_jinni/presentation/pages/device_full_screen_page/printers/widgets/rooms_printers_widget.dart';
import 'package:cybear_jinni/presentation/pages/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Printers page that will call the lamps widgets file and add background
/// and scaffold for it
@RoutePage()
class RoomsPrintersPage extends StatelessWidget {
  const RoomsPrintersPage({
    required this.roomEntity,
    this.roomColorGradiant,
  });

  /// If it have value will only show Printers in this room
  final RoomEntity roomEntity;
  final ListOfColors? roomColorGradiant;

  void cogFunction(BuildContext context) {
    context.router.push(SettingsRouteOfPrintersRoute(roomEntity: roomEntity));
  }

  void backButtonFunction(BuildContext context) {
    context.router.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: BackgroundGradient.getBackground(context),
        ),
        child: Column(
          children: [
            TopNavigationBar(
              pageName: 'Smart Computers',
              rightIcon: null,
              rightIconFunction: cogFunction,
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
              backgroundColor: roomColorGradiant!.listOfColors!.last,
            ),
            Expanded(
              child: RoomsPrintersWidget(
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
