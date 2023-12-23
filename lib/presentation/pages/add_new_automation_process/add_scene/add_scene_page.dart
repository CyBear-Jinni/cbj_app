import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/presentation/molecules/molecules.dart';
import 'package:cybear_jinni/presentation/pages/add_new_automation_process/add_scene/widgets/add_scene_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

/// Page for adding new scene
@RoutePage()
class AddScenePage extends StatelessWidget {
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
      body: ColoredBox(
        color: HexColor('#FBF5F9'),
        child: Column(
          children: [
            TopBarMolecule(
              pageName: 'Add Scene',
              rightIconFunction: backButtonFunction,
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
            ),
            AddSceneWidget(),
          ],
        ),
      ),
    );
  }
}
