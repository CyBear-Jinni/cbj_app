import 'package:cybear_jinni/main.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

Future<void> configureLocalTimeZone() async {
  tz.initializeTimeZones();
  // final String timeZoneName = await platform.invokeMethod('getTimeZoneName');
  final String timeZoneName = await FlutterNativeTimezone.getLocalTimezone();

  tz.setLocalLocation(tz.getLocation(timeZoneName));
}

Future<void> initialisationNotifications() async {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
// initialise the plugin. app_icon needs to be a added as a drawable resource
// to the Android head project
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('cbj_app_icon_no_bg');
  const IOSInitializationSettings initializationSettingsIOS =
      IOSInitializationSettings(
          onDidReceiveLocalNotification: selectNotificationIos);
  const MacOSInitializationSettings initializationSettingsMacOS =
      MacOSInitializationSettings();
  const InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
      macOS: initializationSettingsMacOS);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onSelectNotification: selectNotification);
}

Future selectNotification(String? payload) async {
  if (payload != null) {
    debugPrint('notification payload: $payload');
  }
  // await Navigator.push(
  //   context,
  //   MaterialPageRoute<void>(builder: (context) => SecondScreen(payload)),
  // );
}

Future selectNotificationIos(
    int? id, String? title, String? body, String? payload) async {
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
          android: AndroidNotificationDetails(
        'your channel id',
        'your channel name',
        'your channel description',
        sound: RawResourceAndroidNotificationSound(
            'alarm_clock_the_journey_of_waking_up_created_by_omer_luz'),
      )),
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
    sound: RawResourceAndroidNotificationSound('alert_sfx_created_by_omer_luz'),
  );
  const IOSNotificationDetails iOSPlatformChannelSpecifics =
      IOSNotificationDetails(sound: 'alert_sfx_created_by_omer_luz.wav');
  const MacOSNotificationDetails macOSPlatformChannelSpecifics =
      MacOSNotificationDetails(sound: 'alert_sfx_created_by_omer_luz.wav');
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
  final String? alarmUri = await platform.invokeMethod('getAlarmUri');
  final UriAndroidNotificationSound uriSound =
      UriAndroidNotificationSound(alarmUri!);
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
