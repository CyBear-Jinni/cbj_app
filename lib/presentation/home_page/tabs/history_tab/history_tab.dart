import 'package:cybear_jinni/presentation/home_page/tabs/history_tab/settings_page_of_history.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
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
            icon: FaIcon(FontAwesomeIcons.cog,
                color: Theme.of(context).textTheme.bodyText1!.color),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        SettingsPageOfHistory())),
          ),
        ),
        Text(
          'Actions_History',
          style: TextStyle(
              fontSize: 23.0,
              color: Theme.of(context).textTheme.bodyText1!.color,
              decoration: TextDecoration.underline),
        ).tr(),
        Container(
          height: 20,
        ),
        const Text('Empty_history').tr()
      ],
    );
  }
}
