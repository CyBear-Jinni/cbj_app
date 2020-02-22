import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_home_flutter/injection.iconfig.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection(String environment) async =>
    $initGetIt(getIt, environment: environment);

abstract class Env {
  static const test = 'test';
  static const dev = 'dev';
  static const prod = 'prod';
}
