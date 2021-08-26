import 'package:cybear_jinni/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

/// Saves the current environment for manual use
late String currentEnv;

@InjectableInit()
void configureDependencies(String env) {
  currentEnv = env;
  $initGetIt(getIt, environment: env);
}

abstract class Env {
  static const String test = 'test';
  static const String dev = 'dev';
  static const String prod = 'prod';
}
