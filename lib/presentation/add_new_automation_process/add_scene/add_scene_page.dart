import 'package:auto_route/auto_route.dart';
import 'package:cybear_jinni/application/add_new_scene/add_new_scene_bloc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/add_new_automation_process/add_scene/widgets/add_scene_widget.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

/// Page for adding new scene
@RoutePage()
class AddScenePage extends StatelessWidget {
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
      body: ColoredBox(
        color: HexColor('#FBF5F9'),
        child: Column(
          children: [
            TopNavigationBar(
              pageName: 'Add Scene',
              rightIcon: null,
              rightIconFunction: backButtonFunction,
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
            ),
            BlocProvider(
              create: (context) => getIt<AddNewSceneBloc>(),
              child: AddSceneWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
