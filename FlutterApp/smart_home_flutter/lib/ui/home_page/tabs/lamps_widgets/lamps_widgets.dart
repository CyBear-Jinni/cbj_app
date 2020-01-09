import 'package:flutter/material.dart';
import 'package:smart_home_flutter/ui/home_page/tabs/lamps_widgets/settings_page_of_lamps.dart';

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
            icon: Icon(Icons.settings,
                color: Theme.of(context).textTheme.body1.color),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => SettingsPageOfLamps())),
          ),
        ),
        Text(
          'Lamps Page',
          style: TextStyle(
              fontSize: 23.0,
              color: Theme.of(context).textTheme.body1.color,
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
