import 'package:cbj_integrations_controller/domain/local_db/local_db_failures.dart';
import 'package:cybear_jinni/infrastructure/isar_local_db/isar_repository.dart';
import 'package:dartz/dartz.dart';

abstract interface class ILocalDbRepository2 {
  static ILocalDbRepository2? _instance;

  static ILocalDbRepository2 get instance {
    return _instance ??= IsarRepository();
  }

  static String remotePipesBoxName = 'remotePipesBox';
  static String hubEntityBoxName = 'hubEntityBox';

  Future<void> setHomeId(String homeId);

  Future<String> getHomeId();

  Future<Either<LocalDbFailures, Unit>> saveHubEntity({
    required String hubNetworkBssid,
    required String networkName,
    required String lastKnownIp,
  });

  Future<Either<LocalDbFailures, String>> getHubEntityNetworkBssid();

  Future<Either<LocalDbFailures, String>> getHubEntityNetworkName();

  Future<Either<LocalDbFailures, String>> getHubEntityLastKnownIp();
}
