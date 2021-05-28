import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/routine_tab/add_routine/add_routine.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/routine_tab/alarm_clock_widget.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Page to see and interact with all the set routines
class RoutinesPage extends StatelessWidget {
  /// Execute when user press the icon in top right side
  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
          title: const Text(
            '➕ Add Routine',
            style: TextStyle(color: Colors.green, fontSize: 23),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => AddRoutinePage()));
          },
        ),
        BottomSheetAction(
          title: const Text(
            '⚙️ Routines Settings',
            style: TextStyle(color: Colors.blueGrey, fontSize: 23),
          ),
          onPressed: () {},
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
          'Routines',
          Icons.more_vert,
          userCogFunction,
          leftIcon: FontAwesomeIcons.userCog,
          leftIconFunction: leftIconFunction,
          rightSecondIcon: FontAwesomeIcons.search,
          rightSecondFunction: rightSecondFunction,
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            child: ListView(
              children: const [
                SizedBox(
                  height: 44,
                ),
                AlarmClockWidget(
                    '15:35',
                    'Going to sleep',
                    'assets/gif/sleep3.gif',
                    'Need to wake up in the morning every day and eating all I can bofay.\nNow with no time for delay, lats go and concur the bay'),
                SizedBox(
                  height: 44,
                ),
                AlarmClockWidget('17:40', 'Going to sleep',
                    'assets/gif/sleep1.gif', 'Need to wake up in the morning'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
