import 'package:cbj_integrations_controller/domain/local_db/local_db_failures.dart';
import 'package:cybearjinni/infrastructure/core/logger.dart';
import 'package:cybearjinni/infrastructure/isar_local_db/isar_objects/home_entity_isar_model.dart';
import 'package:cybearjinni/infrastructure/isar_local_db/isar_objects/hub_entity_isar_model.dart';
import 'package:cybearjinni/infrastructure/isar_local_db/isar_objects/remote_pipes_isar_model.dart';
import 'package:dartz/dartz.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

part 'package:cybearjinni/infrastructure/isar_local_db/isar_repository.dart';

abstract interface class ILocalDbRepository {
  static ILocalDbRepository? _instance;

  static ILocalDbRepository get instance {
    return _instance ??= _IsarRepository();
  }

  Future<void> asyncConstructor();

  Future<Either<LocalDbFailures, Unit>> saveHubEntity({
    required String hubNetworkBssid,
    required String networkName,
    required String lastKnownIp,
  });

  Future<Either<LocalDbFailures, String>> getRemotePipesDnsName();

  Future<Either<LocalDbFailures, String>> getHubEntityNetworkBssid();

  Future<Either<LocalDbFailures, String>> getHubEntityNetworkName();

  Future<Either<LocalDbFailures, String>> getHubEntityLastKnownIp();
}
