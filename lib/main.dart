import 'package:cybear_jinni/features/home_page/tabs/lamps_tab/lamps_page.dart';
import 'package:cybear_jinni/features/home_page/tabs/smart_devices_tab/blinds/blinds_page.dart';
import 'package:cybear_jinni/features/room_page/room_page.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/objects/interface_darta/cloud_interface_data.dart';
import 'package:cybear_jinni/objects/smart_device/smart_room_object.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'features/home_page/home_page.dart';
import 'features/login_page/login_page.dart';
import 'features/shared_widgets/error_message.dart';
import 'features/shared_widgets/loader.dart';

void main() {
//  debugPaintSizeEnabled = true;
  configureInjection(Env.prod);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(

      /// Use https://lingohub.com/developers/supported-locales/language-designators-with-regions
      /// Or https://www.contentstack.com/docs/developers/multilingual-content/list-of-supported-languages/
      /// To find your language letters, and add the file letters below
      EasyLocalization(
          supportedLocales: const <Locale>[
        Locale('cs', 'CZ'),
        Locale('de', 'DE'),
        Locale('en', 'GB'),
        Locale('en', 'US'),
        Locale('es', 'CO'),
        Locale('es', 'MX'),
        Locale('fr', 'BE'),
        Locale('fr', 'CA'),
        Locale('fr', 'FR'),
        Locale('ge', 'GE'),
        Locale('he', 'IL'),
        Locale('hi', 'IN'),
        Locale('hr', 'HR'),
        Locale('id', 'ID'),
        Locale('it', 'IT'),
        Locale('ka', 'GE'),
        Locale('nb', 'NO'),
        Locale('pt', 'BR'),
        Locale('ru', 'RU'),
        Locale('te', 'IN'),
        Locale('th', 'TH'),
        Locale('zh', 'TW'),
      ],
          path: 'assets/translations', // <-- change patch to your
          fallbackLocale: const Locale('en', 'US'),
          child: MyApp()));
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  final Map routes = <String, WidgetBuilder>{
    LoginPage.tag: (BuildContext context) => LoginPage(),
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
              initialRoute: auth.currentUser != null ? '/home' : '/login',
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
                '/login': (BuildContext context) => LoginPage(),
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
                  if (pathElements[2] == 'Blinds'.tr()) {
                    return MaterialPageRoute(
                        builder: (BuildContext context) => BlindsPage());
                  }
                  else if (pathElements[2] == 'Lamps'.tr()) {
                    return MaterialPageRoute(
                        builder: (BuildContext context) => LampsPage());
                  }
                }
                return null;
              },
            );
          }

          return Loader();
        }
    );
  }
}
