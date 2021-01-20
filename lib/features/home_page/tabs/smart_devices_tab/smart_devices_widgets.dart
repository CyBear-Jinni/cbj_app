import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:cybear_jinni/core/route_names.dart';
import 'package:cybear_jinni/features/add_new_devices/open_access_point_popup.dart';
import 'package:cybear_jinni/features/home_page/tabs/smart_devices_tab/settings_page_of_smart_devices.dart';
import 'package:cybear_jinni/features/shared_widgets/top_navigation_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmartDevicesWidgets extends StatelessWidget {
  final Map<String, AssetImage> _symbolsImageList = {
    lightsPage.tr(): const AssetImage('assets/symbols/light_bulb_drawing.png'),
    blindsPage.tr(): const AssetImage('assets/symbols/blinds.jpg'),
    'A/C'.tr(): const AssetImage('assets/symbols/air_conditioner.jpg'),
    'Medical'.tr(): const AssetImage('assets/symbols/doctor.jpg'),
    'Phones'.tr(): const AssetImage('assets/symbols/phone1.jpg'),
    'Speakers'.tr(): const AssetImage('assets/symbols/speakers.jpg'),
  };

  final List<MaterialColor> colorList = Colors.primaries;

  List<Widget> smartDevice(BuildContext context) {
    return _symbolsImageList.keys
        .map((String element) => GestureDetector(
              onTap: () {
                print('you clicked $element');
                if (element.toString() == blindsPage.tr() ||
                    element.toString() == lightsPage.tr()) {
                  Navigator.pushNamed(
                    context,
                    '/$devicesPage/$element',
                  );
                } else {
                  Fluttertoast.showToast(
                      msg: element.toString(),
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      backgroundColor: Colors.blueGrey,
                      textColor: Colors.white,
                      fontSize: 16.0);
                }
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 5, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  image: DecorationImage(
                      image: _symbolsImageList[element], fit: BoxFit.fitHeight),
                ),
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).textTheme.bodyText1.color,
                        width: 0.6,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 177,
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            )),
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Text(
                                    element,
                                    style: TextStyle(
                                      fontSize: 25,
                                      //color: Colors.blue – will not work
                                      foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..strokeWidth = 4
                                        ..color = Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    element,
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .color,
                                    ),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              )

                              //
                              // Text(
                              //   element,
                              //   style: TextStyle(fontSize: 22, color: Theme.of(context).textTheme.bodyText1.color,),
                              //   textAlign: TextAlign.center,
                              // ),
                              ),
                        ),
                      ),
                    )),
              ),
            ))
        .toList();
  }

  /// Execute when user press the icon in top right side
  void userCogFunction(BuildContext context) {
    showAdaptiveActionSheet(
      context: context,
      actions: <BottomSheetAction>[
        BottomSheetAction(
            title: '➕ Add Device',
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return OpenHotspotAccessPoint();
                },
              );
            },
            textStyle: TextStyle(color: Colors.green, fontSize: 23)),
        BottomSheetAction(
            title: '⚙️ Devices Settings',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          SettingsPageSmartDevices()));
            },
            textStyle: TextStyle(color: Colors.blueGrey, fontSize: 23)),
      ],
    );
  }

  void leftIconFunction(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TopNavigationBar(
          'Devices',
          FontAwesomeIcons.userCog,
          userCogFunction,
          leftIcon: FontAwesomeIcons.bars,
          leftIconFunction: leftIconFunction,
        ),
        Expanded(
          child: GridView(
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            children: smartDevice(context),
          ),
        ),
      ],
    );
  }
}
