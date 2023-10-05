import 'package:cybear_jinni/injection.config.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt getIt = GetIt.instance;

/// Saves the current environment for manual use
late String currentEnv;

@injectableInit
void configureDependencies(String env) {
  currentEnv = env;
  logger.i('Current CyBear Jinni App environment name: $currentEnv');
  getIt.init(environment: env);
}

abstract class Env {
  static const String test = 'test';
  static const String dev = 'dev';
  static const String prod = 'prod';

  /// Demo of the app with fake data
  static const String demo = 'demo';
}
