import 'package:cybear_jinni/features/home_page/rooms_manager_widget.dart';
import 'package:cybear_jinni/features/home_page/tabs/lights_tab/settings_page_of_lights.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LightsWidgets extends StatelessWidget {
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
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.arrowLeft,
                            color: Theme.of(context).textTheme.bodyText1.color),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    Text(
                      'Lights',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Theme.of(context).textTheme.bodyText1.color),
                    ).tr(),
                  ],
                ),
                SizedBox(
                  width: 25,
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    child: FaIcon(
                      FontAwesomeIcons.cog,
                      color: Theme.of(context).textTheme.bodyText1.color,
                    ),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                SettingsPageOfLights())),
                  ),
                ),
              ],
            ),
          ),
        ),
        RoomsManagerWidget()
      ],
    );
  }
}
