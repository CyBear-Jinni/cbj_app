import 'package:cybearjinni/features/home_page/tabs/presets_tab/preset_block_widget.dart';
import 'package:cybearjinni/features/home_page/tabs/presets_tab/settings_page_of_presets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PresetsWidgets extends StatelessWidget {
  static final List<String> _presetsList = [
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

  List<Widget> presets(BuildContext context) {
    return _presetsList
        .map((element) =>
            PresetBlockWidget(element, _presetsList.indexOf(element)))
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
                color: Theme.of(context).textTheme.bodyText1.color),
            onPressed: () => Navigator.push(
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
              color: Theme.of(context).textTheme.bodyText1.color,
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
