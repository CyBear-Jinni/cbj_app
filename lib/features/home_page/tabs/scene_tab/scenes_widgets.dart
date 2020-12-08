import 'package:CyBearJinni/features/home_page/tabs/scene_tab/scene_block_widget.dart';
import 'package:CyBearJinni/features/home_page/tabs/scene_tab/settings_page_of_scenes.dart';
import 'package:CyBearJinni/objects/enums.dart';
import 'package:CyBearJinni/objects/interface_darta/cloud_interface_data.dart';
import 'package:CyBearJinni/objects/smart_device/smart_device_object.dart';
import 'package:easy_localization/easy_localization.dart';
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
        .map((String element) =>
        SceneBlockWidget(element, _scenesMap[element],
            _scenesMap.keys.toList().indexOf(element)))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 20),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: Icon(FontAwesomeIcons.cog,
                color: Theme
                    .of(context)
                    .textTheme
                    .bodyText1
                    .color),
            onPressed: () =>
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            SettingsPageOfScenes())),
          ),
        ),
        Text(
          'Welcome_to_your_Smart_Home',
          style: TextStyle(
              fontSize: 23.0,
              color: Theme
                  .of(context)
                  .textTheme
                  .bodyText1
                  .color,
              decoration: TextDecoration.underline),
        ).tr(),
        Container(
          height: screenSize.height*0.05,
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
