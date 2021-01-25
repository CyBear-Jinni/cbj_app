import 'package:cybear_jinni/domain/objects/interface_darta/cloud_interface_data.dart';
import 'package:cybear_jinni/domain/objects/smart_device/smart_room_object.dart';
import 'package:cybear_jinni/presentation/core/route_names.dart';
import 'package:cybear_jinni/presentation/home_page/home_page.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/blinds/blinds_page.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/lights/lights_in_the_room/lights_in_the_room_page.dart';
import 'package:cybear_jinni/presentation/home_page/tabs/smart_devices_tab/lights/lights_page.dart';
import 'package:cybear_jinni/presentation/shared_widgets/error_message.dart';
import 'package:cybear_jinni/presentation/shared_widgets/loader.dart';
import 'package:cybear_jinni/presentation/sign_in_page/login_page.dart';
import 'package:cybear_jinni/presentation/where_to_login_page/where_to_login_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  final Map routes = <String, WidgetBuilder>{
    SignInPage.tag: (BuildContext context) => SignInPage(),
//    "HomePage": (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        // Initialize FlutterFire:
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return ErrorMessage();
          }
          final FirebaseAuth auth = FirebaseAuth.instance;
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              title: 'CyBear Jinni App',
              initialRoute:
                  auth.currentUser != null ? '/$homePage' : '/$loginPage',
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              //      darkTheme: ThemeData(brightness: Brightness.dark),
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.deepPurple,
                primaryColorDark: const Color(0xFF271052),
                accentColor: Colors.indigo,
                inputDecorationTheme: InputDecorationTheme(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                textTheme: const TextTheme(
                  bodyText1: TextStyle(color: Colors.white),
                  bodyText2: TextStyle(color: Colors.white70),
                ),
                fontFamily: 'gidole_regular',
              ),
              routes: <String, WidgetBuilder>{
                '/$loginPage': (BuildContext context) => SignInPage(),
                '/$homePage': (BuildContext context) => HomePage(),
                //        '/home_settings': (BuildContext context) => SettingsPage(),
              },
              onGenerateRoute: (RouteSettings settings) {
                final List<String> pathElements = settings.name.split('/');
                if (pathElements[0] != '') {
                  return null;
                } else if (pathElements[1] == lightsInTheRoomPage) {
                  return MaterialPageRoute(
                      builder: (BuildContext context) => LightsInTheRoomPage(
                          rooms
                              .firstWhere((SmartRoomObject room) =>
                                  room.getRoomName() == pathElements[2])
                              .getRoomName()));
                } else if (pathElements[1] == devicesPage) {
                  if (pathElements[2] == blindsPage.tr()) {
                    return MaterialPageRoute(
                        builder: (BuildContext context) => BlindsPage());
                  } else if (pathElements[2] == lightsPage.tr()) {
                    return MaterialPageRoute(
                        builder: (BuildContext context) => LightsPage());
                  }
                } else if (pathElements[1] == whereToLoginPage) {
                  return MaterialPageRoute(
                      settings: settings,
                      builder: (BuildContext context) => WhereToLoginPage());
                }
                return null;
              },
            );
          }

          return Loader();
        });
  }
}
