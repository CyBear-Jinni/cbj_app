import 'package:CyBearJinni/features/home_page/tabs/lamps_tab/settings_page_of_lamps.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../rooms_manager_widget.dart';

class LampsWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: Icon(FontAwesomeIcons.cog,
                color: Theme.of(context).textTheme.bodyText1.color),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => SettingsPageOfLamps())),
          ),
        ),
        Text(
          '`Lamps Page',
          style: TextStyle(
              fontSize: 23.0,
              color: Theme.of(context).textTheme.bodyText1.color,
              decoration: TextDecoration.underline),
        ),
        Container(
          height: 20,
        ),
        RoomsManagerWidget()
      ],
    );
  }
}
