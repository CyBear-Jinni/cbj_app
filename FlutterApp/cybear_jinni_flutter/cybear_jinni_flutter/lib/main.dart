import 'package:cybearjinni/features/home_page/tabs/smart_devices_tab/blinds/blinds_page.dart';
import 'package:cybearjinni/features/room_page/room_page.dart';
import 'package:cybearjinni/injection.dart';
import 'package:cybearjinni/objects/interface_darta/cloud_interface_data.dart';
import 'package:flutter/material.dart';

import 'features/home_page/home_page.dart';
import 'features/login_page/login_page.dart';

void main() {
//  debugPaintSizeEnabled = true;
  configureInjection(Env.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
//    HomePage.tag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart home',
//      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.indigo,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white70),
        ),
        fontFamily: 'gidole_regular',
      ),
      routes: {
        '/': (BuildContext context) => LoginPage(),
        '/home': (BuildContext context) => HomePage(),
//        '/home_settings': (BuildContext context) => SettingsPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        } else if (pathElements[1] == 'roomRage') {
          return MaterialPageRoute(
              builder: (BuildContext context) => RoomPage(rooms
                  .firstWhere((room) => room.getRoomName() == pathElements[2])
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
