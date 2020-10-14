import 'package:CyBearJinni/features/home_page/tabs/scene_tab/scene_block_widget.dart';
import 'package:CyBearJinni/features/home_page/tabs/scene_tab/settings_page_of_scenes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScenesWidgets extends StatelessWidget {
  static final List<String> _scenesList = <String>[
    'Entrance lights OFF  ⛩️  🛑',
    'Entrance lights ON     ⛩️  💡',
    'Go to sleep 😴',
    'Welcome home',
    'Going out',
    'Going for a walk',
    'Workout',
    'Date night',
    'Party',
  ];

  List<Widget> scenes(BuildContext context) {
    return _scenesList
        .map((String element) =>
            SceneBlockWidget(element, _scenesList.indexOf(element)))
        .toList();
  }

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
            icon: Icon(FontAwesomeIcons.cog,
                color: Theme.of(context).textTheme.bodyText1.color),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => SettingsPageOfScenes())),
          ),
        ),
        Text(
          'Welcome_to_your_Smart_Home',
          style: TextStyle(
              fontSize: 23.0,
              color: Theme.of(context).textTheme.bodyText1.color,
              decoration: TextDecoration.underline),
        ).tr(),
        Container(
          height: 20,
        ),
        Expanded(
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            children: scenes(context),
          ),
        ),
      ],
    );
  }
}
