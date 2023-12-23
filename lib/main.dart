import 'package:cbj_integrations_controller/domain/i_saved_devices_repo.dart';
import 'package:cbj_integrations_controller/domain/local_db/i_local_db_repository.dart';
import 'package:cbj_integrations_controller/infrastructure/core/injection.dart';
import 'package:cbj_integrations_controller/infrastructure/node_red/node_red_repository.dart';
import 'package:cbj_integrations_controller/infrastructure/system_commands/system_commands_manager_d.dart';
import 'package:cbj_smart_device_flutter/commands/flutter_commands.dart';
import 'package:cybear_jinni/domain/connections_service.dart';
import 'package:cybear_jinni/domain/i_local_db_repository.dart';
import 'package:cybear_jinni/domain/i_notification_service.dart';
import 'package:cybear_jinni/infrastructure/app_commands.dart';
import 'package:cybear_jinni/infrastructure/core/injection.dart';
import 'package:cybear_jinni/infrastructure/mqtt.dart';
import 'package:cybear_jinni/presentation/core/app_widget.dart';
import 'package:cybear_jinni/presentation/core/routes/app_router.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<Unit> main() async {
  configureDependencies(EnvApp.dev);
  configureInjection(Env.devPc);

  WidgetsFlutterBinding.ensureInitialized();
  // final Directory appDocDirectory = await getApplicationDocumentsDirectory();
  // await configureNetworkTools(appDocDirectory.path);
  await Hive.initFlutter();
  AppCommands();
  await Future.value([
    IDbRepository.instance.initializeDb(isFlutter: true),
    ILocalDbRepository.instance.asyncConstructor(),
    ISavedDevicesRepo.instance.setUpAllFromDb(),
  ]);
  await EasyLocalization.ensureInitialized();
  getIt.registerSingleton<AppRouter>(AppRouter());

  await INotificationService.instance.asyncConstructor();

  MqttServerRepository();
  PhoneCommandsD();
  SystemCommandsManager();
  NodeRedRepository();
  ConnectionsService.instance;

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
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      child: AppWidget(),
    ),
  );
  return unit;
}
