import 'package:CyBearJinni/features/home_page/tabs/scene_tab/scene_block_widget.dart';
import 'package:CyBearJinni/features/home_page/tabs/scene_tab/settings_page_of_scenes.dart';
import 'package:CyBearJinni/objects/enums.dart';
import 'package:CyBearJinni/objects/smart_device/smart_device_object.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScenesWidgets extends StatelessWidget {
  static final Map<String, Map<SmartDeviceObject, List<WishEnum>>> _scenesMap =
      {
    'Entrance lights OFF ----------- ⛩️  🛑': {
      SmartDeviceObject(DeviceType.Light, 's', '10.0.0.200'): [
        WishEnum.SOn,
      ]
    },
    'Entrance lights ON  -----------   ⛩️  💡': {
      SmartDeviceObject(DeviceType.Light, 's', '10.0.0.200'): [
        WishEnum.SOn,
      ]
    },
    'Go to sleep ----------- 😴': {
      SmartDeviceObject(DeviceType.Light, 's', '10.0.0.200'): [
        WishEnum.SOn,
      ]
    },
    'Welcome home': {
      SmartDeviceObject(DeviceType.Light, 's', '10.0.0.200'): [
        WishEnum.SOn,
      ]
    },
    'Going out': {
      SmartDeviceObject(DeviceType.Light, 's', '10.0.0.200'): [
        WishEnum.SOn,
      ]
    },
    'Going for a walk': {
      SmartDeviceObject(DeviceType.Light, 's', '10.0.0.200'): [
        WishEnum.SOn,
      ]
    },
    'Workout': {
      SmartDeviceObject(DeviceType.Light, 's', '10.0.0.200'): [
        WishEnum.SOn,
      ]
    },
    'Date night': {
      SmartDeviceObject(DeviceType.Light, 's', '10.0.0.200'): [
        WishEnum.SOn,
      ]
    },
    'Party': {
      SmartDeviceObject(DeviceType.Light, 's', '10.0.0.200'): [
        WishEnum.SOn,
      ]
    },
  };

  List<Widget> scenes(BuildContext context) {
    return _scenesMap.keys
        .map((String element) => SceneBlockWidget(element, _scenesMap[element],
            _scenesMap.keys.toList().indexOf(element)))
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
