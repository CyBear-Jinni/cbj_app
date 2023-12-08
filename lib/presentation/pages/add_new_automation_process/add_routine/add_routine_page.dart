import 'package:auto_route/auto_route.dart';
import 'package:cbj_integrations_controller/domain/routine/value_objects_routine_cbj.dart';
import 'package:cybear_jinni/presentation/pages/add_new_automation_process/add_routine/widgets/add_routine_widget.dart';
import 'package:cybear_jinni/presentation/pages/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

/// Page for adding new routine
@RoutePage()
class AddRoutinePage extends StatelessWidget {
  const AddRoutinePage({
    required this.daysToRepeat,
    required this.hourToRepeat,
    required this.minutesToRepeat,
  });

  final RoutineCbjRepeatDateDays daysToRepeat;
  final RoutineCbjRepeatDateHour hourToRepeat;
  final RoutineCbjRepeatDateMinute minutesToRepeat;

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
            TopNavigationBar(
              pageName: 'Add Routine',
              rightIcon: null,
              rightIconFunction: backButtonFunction,
              leftIcon: FontAwesomeIcons.arrowLeft,
              leftIconFunction: backButtonFunction,
            ),
            AddRoutineWidget(),
          ],
        ),
      ),
    );
  }
}
