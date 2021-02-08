import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:cybear_jinni/infrastructure/objects/enums.dart';
import 'package:cybear_jinni/infrastructure/objects/interface_darta/cloud_interface_data.dart';
import 'package:cybear_jinni/infrastructure/objects/smart_device/smart_device_object.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/scene_tab/scene_block_widget.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/scene_tab/settings_page_of_scenes.dart';
import 'package:cybear_jinni/presentation/shared_widgets/top_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScenesWidgets extends StatelessWidget {
  static final Map<String, Map<SmartDeviceObject, List<WishEnum>>> _scenesMap =
      <String, Map<SmartDeviceObject, List<WishEnum>>>{
    'Entrance lights OFF ----------- ⛩️  🛑':
        <SmartDeviceObject, List<WishEnum>>{
      room3DevicesList[0]: <WishEnum>[
        WishEnum.SOff,
      ],
      room3DevicesList[3]: <WishEnum>[
        WishEnum.SOff,
      ]
    },
    'Entrance lights ON  -----------   ⛩️  💡':
        <SmartDeviceObject, List<WishEnum>>{
      room3DevicesList[0]: <WishEnum>[
        WishEnum.SOn,
      ],
      room3DevicesList[3]: <WishEnum>[
        WishEnum.SOn,
      ]
    },
    'Go to sleep ----------- 😴': <SmartDeviceObject, List<WishEnum>>{
      room3DevicesList[0]: <WishEnum>[
        WishEnum.SOff,
      ],
      room3DevicesList[1]: <WishEnum>[
        WishEnum.SOff,
      ],
      room3DevicesList[2]: <WishEnum>[
        WishEnum.SOff,
      ],
      room3DevicesList[3]: <WishEnum>[
        WishEnum.SOff,
      ],
      room4DevicesList[0]: <WishEnum>[
        WishEnum.SOff,
      ]
    },
    'Welcome home': <SmartDeviceObject, List<WishEnum>>{},
    'Going out': <SmartDeviceObject, List<WishEnum>>{},
    'Going for a walk': <SmartDeviceObject, List<WishEnum>>{},
    'Workout': <SmartDeviceObject, List<WishEnum>>{},
    'Date night': <SmartDeviceObject, List<WishEnum>>{},
    'Party': <SmartDeviceObject, List<WishEnum>>{},
  };

  List<Widget> scenes(BuildContext context) {
    return _scenesMap.keys
        .map((String element) => SceneBlockWidget(element, _scenesMap[element],
            _scenesMap.keys.toList().indexOf(element)))
        .toList();
  }

  /// Execute when user press the icon in top right side
  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
            title: '➕ Add Scene',
            onPressed: () {},
            textStyle: const TextStyle(color: Colors.green, fontSize: 23)),
        BottomSheetAction(
            title: '⚙️ Scenes Settings',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          SettingsPageOfScenes()));
            },
            textStyle: const TextStyle(color: Colors.blueGrey, fontSize: 23)),
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
          FontAwesomeIcons.userCog,
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

  void containerForSheet<T>({BuildContext context, Widget child}) {
    showCupertinoModalPopup<T>(
      context: context,
      builder: (BuildContext context) => child,
    ).then<void>((T value) {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('You clicked $value'),
        duration: const Duration(milliseconds: 800),
      ));
    });
  }
}
