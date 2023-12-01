import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/presentation/pages/add_new_automation_process/add_action/widgets/action_choose_information.dart';
import 'package:cybear_jinni/presentation/pages/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

@RoutePage()
class AddActionPage extends StatelessWidget {
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
            pageName: 'Add Action',
            rightIcon: null,
            rightIconFunction: backButtonFunction,
            leftIcon: FontAwesomeIcons.arrowLeft,
            leftIconFunction: backButtonFunction,
          ),
          ActionChooseInformation(),
        ],
      ),
    );
  }
}
