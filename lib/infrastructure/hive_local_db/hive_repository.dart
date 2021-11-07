import 'package:cybear_jinni/domain/local_db/i_local_db_repository.dart';
import 'package:cybear_jinni/domain/local_db/local_db_failures.dart';
import 'package:cybear_jinni/infrastructure/hive_local_db/hive_objects/hub_entity_hive_model.dart';
import 'package:cybear_jinni/infrastructure/hive_local_db/hive_objects/remote_pipes_hive_model.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILocalDbRepository)
class HiveRepository extends ILocalDbRepository {
  HiveRepository() {
    asyncConstractor();
  }

  Future<void> asyncConstractor() async {
    await Hive.initFlutter();
    Hive.registerAdapter(RemotePipesHiveModelAdapter());
    Hive.registerAdapter(HubEntityHiveModelAdapter());
  }

  @override
  Future<Either<LocalDbFailures, Unit>> saveRemotePipes({
    required String remotePipesDomainName,
  }) async {
    try {
      final Box<RemotePipesHiveModel> remotePipesBox =
          await Hive.openBox<RemotePipesHiveModel>(remotePipesBoxName);

      final RemotePipesHiveModel remotePipesHiveModel = RemotePipesHiveModel()
        ..domainName = remotePipesDomainName;

      if (remotePipesBox.isNotEmpty) {
        await remotePipesBox.putAt(0, remotePipesHiveModel);
      } else {
        remotePipesBox.add(remotePipesHiveModel);
      }

      await remotePipesBox.close();
      logger.i(
        'Remote Pipes got saved to local storage with domain name is: '
        '$remotePipesDomainName',
      );
    } catch (e) {
      logger.e('Error saving Remote Pipes to local storage');
      return left(const LocalDbFailures.unexpected());
    }
    return right(unit);
  }

  @override
  Future<Either<LocalDbFailures, Unit>> saveHubEntity({
    required String hubNetworkBssid,
    required String networkName,
    required String lastKnownIp,
  }) async {
    try {
      final Box<HubEntityHiveModel> hubEntityBox =
          await Hive.openBox<HubEntityHiveModel>(hubEntityBoxName);

      final HubEntityHiveModel hubEntityHiveModel = HubEntityHiveModel()
        ..hubNetworkBssid = hubNetworkBssid
        ..networkName = networkName
        ..lastKnownIp = lastKnownIp;

      if (hubEntityBox.isNotEmpty) {
        hubEntityBox.putAt(0, hubEntityHiveModel);
      } else {
        hubEntityBox.add(hubEntityHiveModel);
      }

      await hubEntityBox.close();
      logger.i('Hub entity got saved to local storage');
    } catch (e) {
      logger.e('Error saving Hub entity to local storage: $e');
      return left(const LocalDbFailures.unexpected());
    }
    return right(unit);
  }

  @override
  Future<Either<LocalDbFailures, String>> getRemotePipesDnsName() async {
    try {
      final Box<RemotePipesHiveModel> remotePipesBox =
          await Hive.openBox<RemotePipesHiveModel>(remotePipesBoxName);

      final List<RemotePipesHiveModel> remotePipesHiveModelFromDb =
          remotePipesBox.values.toList().cast<RemotePipesHiveModel>();

      if (remotePipesHiveModelFromDb.isNotEmpty) {
        final String remotePipesDnsName =
            remotePipesHiveModelFromDb[0].domainName;
        logger.i(
          'Remote pipes domain name is: '
          '${remotePipesHiveModelFromDb[0].domainName}',
        );

        await remotePipesBox.close();

        return right(remotePipesDnsName);
      }
      await remotePipesBox.close();
      logger.i("Didn't find any remote pipes in the local DB");
    } catch (e) {
      logger.e('Local DB hive error: $e');
    }
    return left(const LocalDbFailures.unexpected());
  }

  @override
  Future<Either<LocalDbFailures, String>> getHubEntityLastKnownIp() async {
    try {
      final Box<HubEntityHiveModel> hubEntityBox =
          await Hive.openBox<HubEntityHiveModel>(hubEntityBoxName);

      final List<HubEntityHiveModel> hubEntityHiveModelFromDb =
          hubEntityBox.values.toList().cast<HubEntityHiveModel>();

      if (hubEntityHiveModelFromDb.isNotEmpty) {
        final String hubLastKnownIp = hubEntityHiveModelFromDb[0].lastKnownIp;
        logger.i(
          'Hub entity lastKnownIp is: '
          '${hubEntityHiveModelFromDb[0].lastKnownIp}',
        );
        await hubEntityBox.close();

        return right(hubLastKnownIp);
      }
      await hubEntityBox.close();
      logger.i("Didn't find any Hub entity in the local DB");
    } catch (e) {
      logger.e('Local DB hive error: $e');
    }
    return left(const LocalDbFailures.unexpected());
  }

  @override
  Future<Either<LocalDbFailures, String>> getHubEntityNetworkBssid() async {
    try {
      final Box<HubEntityHiveModel> hubEntityBox =
          await Hive.openBox<HubEntityHiveModel>(hubEntityBoxName);

      final List<HubEntityHiveModel> hubEntityHiveModelFromDb =
          hubEntityBox.values.toList().cast<HubEntityHiveModel>();

      if (hubEntityHiveModelFromDb.isNotEmpty) {
        final String hubNetworkBssid =
            hubEntityHiveModelFromDb[0].hubNetworkBssid;
        logger.i(
          'Hub entity network bssid is: '
          '${hubEntityHiveModelFromDb[0].hubNetworkBssid}',
        );
        await hubEntityBox.close();

        return right(hubNetworkBssid);
      }
      await hubEntityBox.close();
      logger.i("Didn't find any Hub entity in the local DB");
    } catch (e) {
      logger.e('Local DB hive error: $e');
    }
    return left(const LocalDbFailures.unexpected());
  }

  @override
  Future<Either<LocalDbFailures, String>> getHubEntityNetworkName() async {
    try {
      final Box<HubEntityHiveModel> hubEntityBox =
          await Hive.openBox<HubEntityHiveModel>(hubEntityBoxName);

      final List<HubEntityHiveModel> hubEntityHiveModelFromDb =
          hubEntityBox.values.toList().cast<HubEntityHiveModel>();

      if (hubEntityHiveModelFromDb.isNotEmpty) {
        final String hubNetworkName = hubEntityHiveModelFromDb[0].networkName;
        logger.i(
          'Hub entity network name is: '
          '${hubEntityHiveModelFromDb[0].networkName}',
        );
        await hubEntityBox.close();

        return right(hubNetworkName);
      }
      await hubEntityBox.close();
      logger.i("Didn't find any Hub entity in the local DB");
    } catch (e) {
      logger.e('Local DB hive error: $e');
    }
    return left(const LocalDbFailures.unexpected());
  }
}
