import 'package:CyBearJinni/features/home_page/tabs/smart_devices_tab/blinds/blinds_page.dart';
import 'package:CyBearJinni/features/room_page/room_page.dart';
import 'package:CyBearJinni/injection.dart';
import 'package:CyBearJinni/objects/interface_darta/cloud_interface_data.dart';
import 'package:CyBearJinni/objects/smart_device/smart_room_object.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'features/home_page/home_page.dart';
import 'features/login_page/login_page.dart';

void main() {
//  debugPaintSizeEnabled = true;
  configureInjection(Env.prod);
  runApp(

      /// Use https://lingohub.com/developers/supported-locales/language-designators-with-regions
      /// Or https://www.contentstack.com/docs/developers/multilingual-content/list-of-supported-languages/
      /// To find your language letters, and add the file letters below
      EasyLocalization(
          supportedLocales: const <Locale>[
        Locale('en', 'US'),
        Locale('he', 'IL')
      ],
          path: 'assets/translations', // <-- change patch to your
          fallbackLocale: const Locale('en', 'US'),
          child: MyApp()));
  Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  final Map routes = <String, WidgetBuilder>{
    LoginPage.tag: (BuildContext context) => LoginPage(),
//    "HomePage": (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
//      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.indigo,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white70),
        ),
        fontFamily: 'gidole_regular',
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => LoginPage(),
        '/home': (BuildContext context) => HomePage(),
//        '/home_settings': (BuildContext context) => SettingsPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        } else if (pathElements[1] == 'roomPage') {
          return MaterialPageRoute(
              builder: (BuildContext context) => RoomPage(rooms
                  .firstWhere((SmartRoomObject room) =>
                      room.getRoomName() == pathElements[2])
                  .getRoomName()));
        } else if (pathElements[1] == 'devices') {
          if (pathElements[2] == 'blinds') {
            return MaterialPageRoute(
                builder: (BuildContext context) => BlindsPage());
          }
        }
        return null;
      },
    );
  }
}
