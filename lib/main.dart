import 'package:cybear_jinni/domain/local_db/i_local_db_repository.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/presentation/core/app_widget.dart';
import 'package:cybear_jinni/presentation/core/notifications.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';

/// Streams are created so that app can respond to notification-related events
/// since the plugin is initialised in the `main` function
final BehaviorSubject<ReceivedNotification> didReceiveLocalNotificationSubject =
    BehaviorSubject<ReceivedNotification>();

final BehaviorSubject<String> selectNotificationSubject =
    BehaviorSubject<String>();

const MethodChannel platform = MethodChannel('cybear_jinni/smart_home');

class ReceivedNotification {
  ReceivedNotification({
    required this.id,
    required this.title,
    required this.body,
    required this.payload,
  });

  final int? id;
  final String? title;
  final String? body;
  final String? payload;
}

Future<Unit> main() async {
  // needed if you intend to initialize in the `main` function
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
//  debugPaintSizeEnabled = true;
  configureDependencies(Env.prod);

  await configureLocalTimeZone();

  await initialisationNotifications();

  getIt<ILocalDbRepository>();

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
      child: AppWidget(),
    ),
  );
  return unit;
}
