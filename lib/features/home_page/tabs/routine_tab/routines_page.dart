import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:cybear_jinni/features/home_page/tabs/routine_tab/add_routine/add_routine.dart';
import 'package:cybear_jinni/features/home_page/tabs/routine_tab/alarm_clock_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Page to see and interact with all the set routines
class RoutinesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.black.withOpacity(0.3),
          child: Container(
            margin: const EdgeInsets.fromLTRB(9, 25, 9, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Routine',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Theme.of(context).textTheme.bodyText1.color),
                ).tr(),
                SizedBox(
                  width: 25,
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      showAdaptiveActionSheet(
                        context: context,
                        actions: <BottomSheetAction>[
                          BottomSheetAction(
                              title: '➕ Add Routine',
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            AddRoutinePage()));
                              },
                              textStyle: const TextStyle(
                                  color: Colors.green, fontSize: 23)),
                          BottomSheetAction(
                              title: '⚙️ Routines Settings',
                              onPressed: () {},
                              textStyle: const TextStyle(
                                  color: Colors.blueGrey, fontSize: 23)),
                        ],
                      );
                    },
                    child: FaIcon(
                      FontAwesomeIcons.userCog,
                      color: Theme.of(context).textTheme.bodyText1.color,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            child: ListView(
              children: [
                const SizedBox(
                  height: 44,
                ),
                AlarmClockWidget(
                    '15:35',
                    'Going to sleep',
                    'assets/gif/sleep3.gif',
                    'Need to wake up in the morning every day and eating all I can bofay.\nNow with no time for delay, lats go and concur the bay'),
                const SizedBox(
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
