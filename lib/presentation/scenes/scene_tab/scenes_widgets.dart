import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:cybear_jinni/domain/devices/device/device_entity.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/presentation/scenes/scene_tab/scene_block_widget.dart';
import 'package:cybear_jinni/presentation/scenes/scene_tab/settings_page_of_scenes.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScenesWidgets extends StatelessWidget {
  static final Map<String, Map<DeviceEntity, List<DeviceActions>>> _scenesMap =
      <String, Map<DeviceEntity, List<DeviceActions>>>{
    'Entrance lights OFF ----------- ⛩️  🛑':
        <DeviceEntity, List<DeviceActions>>{},
    'Entrance lights ON  -----------   ⛩️  💡':
        <DeviceEntity, List<DeviceActions>>{},
    'Go to sleep ----------- 😴': <DeviceEntity, List<DeviceActions>>{},
    'Welcome home': <DeviceEntity, List<DeviceActions>>{},
    'Going out': <DeviceEntity, List<DeviceActions>>{},
    'Going for a walk': <DeviceEntity, List<DeviceActions>>{},
    'Workout': <DeviceEntity, List<DeviceActions>>{},
    'Date night': <DeviceEntity, List<DeviceActions>>{},
    'Party': <DeviceEntity, List<DeviceActions>>{},
  };

  List<Widget> scenes(BuildContext context) {
    return _scenesMap.keys
        .map((String element) => SceneBlockWidget(element, _scenesMap[element]!,
            _scenesMap.keys.toList().indexOf(element)))
        .toList();
  }

  /// Execute when user press the icon in top right side
  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
          title: const Text(
            '➕ Add Scene',
            style: TextStyle(color: Colors.green, fontSize: 23),
          ),
          onPressed: () {},
        ),
        BottomSheetAction(
          title: const Text(
            '⚙️ Scenes Settings',
            style: TextStyle(color: Colors.blueGrey, fontSize: 23),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => SettingsPageOfScenes()));
          },
        ),
      ],
    );
  }

  void leftIconFunction(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TopNavigationBar(
          'Scenes',
          Icons.more_vert,
          userCogFunction,
          leftIcon: FontAwesomeIcons.arrowLeft,
          leftIconFunction: leftIconFunction,
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            child: GridView(
              padding: const EdgeInsets.only(top: 10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              children: scenes(context),
            ),
          ),
        ),
      ],
    );
  }

  void containerForSheet<T>({BuildContext? context, Widget? child}) {
    showCupertinoModalPopup<T>(
      context: context!,
      builder: (BuildContext context) => child!,
    ).then<void>((T? value) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('You clicked $value'),
        duration: const Duration(milliseconds: 800),
      ));
    });
  }
}
