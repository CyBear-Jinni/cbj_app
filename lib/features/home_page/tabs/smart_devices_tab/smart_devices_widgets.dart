import 'package:CyBearJinni/features/home_page/tabs/smart_devices_tab/settings_page_of_smart_devices.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmartDevicesWidgets extends StatelessWidget {
  final Map<String, AssetImage> _symbolsImageList = {
    'Conditioner'.tr(): const AssetImage('assets/symbols/air_conditioner.jpg'),
    'Blinds'.tr(): const AssetImage('assets/symbols/blinds.jpg'),
    'Medical Device': const AssetImage('assets/symbols/doctor.jpg'),
    'Smart_Phone': const AssetImage('assets/symbols/phone1.jpg'),
    'Smart_speakers': const AssetImage('assets/symbols/speakers.jpg'),
  };

  final List<MaterialColor> colorList = Colors.primaries;

  List<Widget> smartDevice(BuildContext context) {
    return _symbolsImageList.keys
        .map((String element) => GestureDetector(
              onTap: () {
                print('you clicked $element');
                Fluttertoast.showToast(
                    msg: element.toString(),
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    backgroundColor: Colors.blueGrey,
                    textColor: Colors.white,
                    fontSize: 16.0);
                if (element.toString() == 'Blinds'.tr()) {
                  Navigator.pushNamed(
                    context,
                    '/devices/$element',
                  );
                }
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 5, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black,
                  image: DecorationImage(
                      image: _symbolsImageList[element], fit: BoxFit.cover),
                ),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black54,
                    ),
                    alignment: Alignment.center,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.black54),
                      child: Text(
                        element,
                        style: const TextStyle(fontSize: 27),
                        textAlign: TextAlign.center,
                      ),
                    )),
              ),
            ))
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
                    builder: (BuildContext context) =>
                        SettingsPageSmartDevices())),
          ),
        ),
        Text(
          'Smart_Devices_page',
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
            children: smartDevice(context),
          ),
        ),
      ],
    );
  }
}
