import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_home_flutter/features/home_page/tabs/presets_tab/settings_page_of_presets.dart';


class PresetsWidgets extends StatelessWidget {
  final List<String> _presetsList = [
    'Welcome home',
    'Party mode',
    'Going out',
    'Go to sleep',
    'Going for a walk',
    'Workout',
    'Date night',
    'Danger mode',
    'Danger mode1',
    'Danger mode2',
    'Danger mode3',
    'Danger mode4',
    'Party mode2',
    'Party mode3',
    'Party mode4',
    'Party mode5',
    'Party mode6',
  ];
  final List<MaterialColor> colorList = Colors.primaries;


  List<Widget> presets(BuildContext context) {
    return _presetsList
        .map((element) =>
        Container(
          margin: EdgeInsets.fromLTRB(2, 0, 2, 16),
          child: RaisedButton(
            color: colorList[_presetsList.indexOf(element)],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
            child: Text(
              element,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                color: Theme
                    .of(context)
                    .textTheme
                    .body1
                    .color,
              ),
            ),
            onPressed: () {},
          ),
        ))
        .toList();
  }


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
                color: Theme
                    .of(context)
                    .textTheme
                    .body1
                    .color),
            onPressed: () =>
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            SettingsPageOfPresets())),
          ),
        ),
        Text(
          'Welcome to your smart home',
          style: TextStyle(
              fontSize: 23.0,
              color: Theme
                  .of(context)
                  .textTheme
                  .body1
                  .color,
              decoration: TextDecoration.underline),
        ),
        Container(
          height: 20,
        ),
        Expanded(
          child: GridView(
            children: presets(context),
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          ),
        ),
      ],
    );
  }
}