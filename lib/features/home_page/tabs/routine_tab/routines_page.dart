import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
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
                              title: 'Add Routine',
                              onPressed: () {},
                              textStyle: const TextStyle(
                                  color: Colors.green, fontSize: 23)),
                          BottomSheetAction(
                              title: 'Routines Settings',
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
            child: const Text('Routine'),
          ),
        ),
      ],
    );
  }
}
