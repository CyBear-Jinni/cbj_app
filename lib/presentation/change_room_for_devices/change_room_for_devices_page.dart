import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/room/create_new_room_form/room_sign_in_form_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/change_room_for_devices/widgets/change_room_for_devices_widget.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

@RoutePage()
class ChangeRoomForDevicesPage extends StatelessWidget {
  void backButtonFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: HexColor('#303030'),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      backgroundColor: HexColor('#303030'),
      body: Column(
        children: [
          TopNavigationBar(
            pageName: 'Change Area For Devices',
            rightIcon: null,
            rightIconFunction: null,
            leftIcon: FontAwesomeIcons.arrowLeft,
            leftIconFunction: backButtonFunction,
          ),
          BlocProvider(
            create: (context) => getIt<RoomSignInFormBloc>(),
            child: ChangeRoomForDevicesWidget(),
          ),
        ],
      ),
    );
  }
}
