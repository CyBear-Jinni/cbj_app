import 'package:cybear_jinni/presentation/atoms/atoms.dart';
import 'package:cybear_jinni/presentation/pages/home_page/tabs/history_tab/settings_page_of_history.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HistoryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 20),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.gear,
              color: Theme.of(context).textTheme.bodyLarge!.color,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => SettingsPageOfHistory(),
              ),
            ),
          ),
        ),
        TextAtom(
          'Actions_History',
          style: TextStyle(
            fontSize: 23.0,
            color: Theme.of(context).textTheme.bodyLarge!.color,
            decoration: TextDecoration.underline,
          ),
        ),
        Container(
          height: 20,
        ),
        const TextAtom('Empty_history'),
      ],
    );
  }
}
