import 'package:cybear_jinni/features/home_page/tabs/lights_tab/lights_page.dart';
import 'package:cybear_jinni/features/home_page/tabs/smart_devices_tab/blinds/blinds_page.dart';
import 'package:cybear_jinni/features/room_page/room_page.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/objects/interface_darta/cloud_interface_data.dart';
import 'package:cybear_jinni/objects/smart_device/smart_room_object.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import 'features/home_page/home_page.dart';
import 'features/login_page/login_page.dart';
import 'features/shared_widgets/error_message.dart';
import 'features/shared_widgets/loader.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

/// Streams are created so that app can respond to notification-related events
/// since the plugin is initialised in the `main` function
final BehaviorSubject<ReceivedNotification> didReceiveLocalNotificationSubject =
    BehaviorSubject<ReceivedNotification>();

final BehaviorSubject<String> selectNotificationSubject =
    BehaviorSubject<String>();

const MethodChannel platform = MethodChannel('cybear_jinni/smart_home');

class ReceivedNotification {
  ReceivedNotification({
    @required this.id,
    @required this.title,
    @required this.body,
    @required this.payload,
  });

  final int id;
  final String title;
  final String body;
  final String payload;
}

void main() async {
//  debugPaintSizeEnabled = true;
  await configureInjection(Env.prod);

  // needed if you intend to initialize in the `main` function
  WidgetsFlutterBinding.ensureInitialized();

  await _configureLocalTimeZone();
  // await _configureLocalTimeZone();

  await initialisationNotifications();

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
                primaryColorDark: const Color(0xFF271052),
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
                  } else if (pathElements[2] == 'Lights'.tr()) {
                    return MaterialPageRoute(
                        builder: (BuildContext context) => LightsPage());
                  }
                }
                return null;
              },
            );
          }

          return Loader();
        });
  }
}

Future<void> _configureLocalTimeZone() async {
  tz.initializeTimeZones();
  final String timeZoneName = await platform.invokeMethod('getTimeZoneName');
  tz.setLocalLocation(tz.getLocation(timeZoneName));
}

Future<void> initialisationNotifications() async {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
// initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('logo');
  final IOSInitializationSettings initializationSettingsIOS =
      IOSInitializationSettings(
          onDidReceiveLocalNotification: selectNotificationIos);
  final MacOSInitializationSettings initializationSettingsMacOS =
      MacOSInitializationSettings();
  final InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
      macOS: initializationSettingsMacOS);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onSelectNotification: selectNotification);
}

Future selectNotification(String payload) async {
  if (payload != null) {
    debugPrint('notification payload: $payload');
  }
  // await Navigator.push(
  //   context,
  //   MaterialPageRoute<void>(builder: (context) => SecondScreen(payload)),
  // );
}

Future selectNotificationIos(
    int id, String title, String body, String payload) async {
  if (payload != null) {
    debugPrint('notification payload: $payload');
  }
  // await Navigator.push(
  //   context,
  //   MaterialPageRoute<void>(builder: (context) => SecondScreen(payload)),
  // );
}

Future<void> zonedScheduleNotification() async {
  await flutterLocalNotificationsPlugin.zonedSchedule(
      0,
      'scheduled title',
      'scheduled body',
      tz.TZDateTime.now(tz.local).add(const Duration(seconds: 5)),
      const NotificationDetails(
          android: AndroidNotificationDetails('your channel id',
              'your channel name', 'your channel description')),
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime);
}

Future<void> showNotificationCustomSound() async {
  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
    'your other channel id',
    'your other channel name',
    'your other channel description',
    sound: RawResourceAndroidNotificationSound(
        'alarm_clock_the_journey_of_waking_up_created_by_omer_luz'),
  );
  const IOSNotificationDetails iOSPlatformChannelSpecifics =
      IOSNotificationDetails(
          sound:
              'alarm_clock_the_journey_of_waking_up_created_by_omer_luz.wav');
  const MacOSNotificationDetails macOSPlatformChannelSpecifics =
      MacOSNotificationDetails(
          sound:
              'alarm_clock_the_journey_of_waking_up_created_by_omer_luz.wav');
  const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
      macOS: macOSPlatformChannelSpecifics);
  await flutterLocalNotificationsPlugin.show(
      0,
      'custom sound notification title',
      'custom sound notification body',
      platformChannelSpecifics);
}

Future<void> showSoundUriNotification() async {
  /// this calls a method over a platform channel implemented within the
  /// example app to return the Uri for the default alarm sound and uses
  /// as the notification sound
  final String alarmUri = await platform.invokeMethod('getAlarmUri');
  final UriAndroidNotificationSound uriSound =
      UriAndroidNotificationSound(alarmUri);
  final AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
          'uri channel id', 'uri channel name', 'uri channel description',
          sound: uriSound,
          styleInformation: const DefaultStyleInformation(true, true));
  final NotificationDetails platformChannelSpecifics =
      NotificationDetails(android: androidPlatformChannelSpecifics);
  await flutterLocalNotificationsPlugin.show(
      0, 'uri sound title', 'uri sound body', platformChannelSpecifics);
}
