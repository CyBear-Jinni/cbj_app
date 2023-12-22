part of 'package:cybear_jinni/domain/i_notification_service.dart';

class _AppNotificationService extends INotificationService {
  FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;

  @override
  Future<void> asyncConstructor() async {
    if (isConstructed) {
      return;
    }
    isConstructed = true;
    await configureLocalTimeZone();
    await initialisationNotifications();
  }

  bool isConstructed = false;

  Future<void> configureLocalTimeZone() async {
    tz.initializeTimeZones();
    try {
      final String timeZoneName = await FlutterTimezone.getLocalTimezone();
      tz.setLocalLocation(tz.getLocation(timeZoneName));
    } catch (e) {
      tz.setLocalLocation(tz.getLocation('US/Central'));
    }
  }

  Future<void> initialisationNotifications() async {
    if (kIsWeb) {
      return;
    }
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    // initialise the plugin. app_icon needs to be a added as a drawable resource
    // to the Android head project
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('ic_launcher_foreground');
    final DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
      onDidReceiveLocalNotification: selectNotificationIos,
    );

    const LinuxInitializationSettings initializationSettingsLinux =
        LinuxInitializationSettings(
      defaultActionName: 'Open notification',
      // defaultIcon: AssetsLinuxIcon('icons/app_icon.png'),
    );

    const DarwinInitializationSettings initializationSettingsMacOS =
        DarwinInitializationSettings();
    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
      macOS: initializationSettingsMacOS,
      linux: initializationSettingsLinux,
    );
    await flutterLocalNotificationsPlugin!.initialize(
      initializationSettings,
    );
  }

  Future selectNotification(String? payload) async {
    if (payload != null) {
      logger.d('notification payload: $payload');
    }
  }

  Future selectNotificationIos(
    int? id,
    String? title,
    String? body,
    String? payload,
  ) async {
    if (payload != null) {
      logger.d('notification payload: $payload');
    }
  }

  Future<void> zonedScheduleNotification() async {
    if (kIsWeb) {
      return;
    }
    await flutterLocalNotificationsPlugin!.zonedSchedule(
      0,
      'scheduled title',
      'scheduled body',
      tz.TZDateTime.now(tz.local).add(const Duration(seconds: 5)),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'your channel id',
          'your channel name',
          sound: RawResourceAndroidNotificationSound(
            'alarm_clock_the_journey_of_waking_up_created_by_omer_luz',
          ),
        ),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  Future<void> showNotificationCustomSound() async {
    if (kIsWeb) {
      return;
    }
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'your other channel id',
      'your other channel name',
      sound:
          RawResourceAndroidNotificationSound('alert_sfx_created_by_omer_luz'),
    );
    const DarwinNotificationDetails iOSPlatformChannelSpecifics =
        DarwinNotificationDetails(sound: 'alert_sfx_created_by_omer_luz.wav');
    const DarwinNotificationDetails macOSPlatformChannelSpecifics =
        DarwinNotificationDetails(sound: 'alert_sfx_created_by_omer_luz.wav');
    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
      macOS: macOSPlatformChannelSpecifics,
    );
    await flutterLocalNotificationsPlugin!.show(
      0,
      'custom sound notification title',
      'custom sound notification body',
      platformChannelSpecifics,
    );
  }

  Future<void> showSoundUriNotification() async {
    if (kIsWeb) {
      return;
    }

    /// this calls a method over a platform channel implemented within the
    /// example app to return the Uri for the default alarm sound and uses
    /// as the notification sound
    // final String? alarmUri = await platform.invokeMethod('getAlarmUri');
    // final UriAndroidNotificationSound uriSound =
    //     UriAndroidNotificationSound(alarmUri!);
    // final AndroidNotificationDetails androidPlatformChannelSpecifics =
    //     AndroidNotificationDetails(
    //   'uri channel id',
    //   'uri channel name',
    //   sound: uriSound,
    //   styleInformation: const DefaultStyleInformation(true, true),
    // );
    // final NotificationDetails platformChannelSpecifics =
    //     NotificationDetails(android: androidPlatformChannelSpecifics);
    // await flutterLocalNotificationsPlugin!
    //     .show(0, 'uri sound title', 'uri sound body', platformChannelSpecifics);
  }
}