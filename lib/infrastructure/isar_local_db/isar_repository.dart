import 'package:cybear_jinni/domain/local_db/i_local_db_repository.dart';
import 'package:cybear_jinni/domain/local_db/local_db_failures.dart';
import 'package:cybear_jinni/infrastructure/isar_local_db/isar_objects/home_entity_isar_model.dart';
import 'package:cybear_jinni/infrastructure/isar_local_db/isar_objects/hub_entity_isar_model.dart';
import 'package:cybear_jinni/infrastructure/isar_local_db/isar_objects/remote_pipes_isar_model.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

@LazySingleton(as: ILocalDbRepository)
class IsarRepository extends ILocalDbRepository {
  IsarRepository() {
    asyncConstractor();
  }

  late Isar isar;

  Future<void> asyncConstractor() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [
        RemotePipesIsarModelSchema,
        HubEntityIsarModelSchema,
        HomeEntityIsarModelSchema,
      ],
      directory: dir.path,
    );
  }

  @override
  Future<void> setHomeId(String homeId) async {
    final HomeEntityIsarModel homeEntityIsarModel = HomeEntityIsarModel()
      ..homeId = homeId;
    await isar.writeTxn(() async {
      await isar.homeEntityIsarModels.clear();
      await isar.homeEntityIsarModels.put(homeEntityIsarModel);
    });
  }

  @override
  Future<Either<LocalDbFailures, Unit>> saveRemotePipes({
    required String remotePipesDomainName,
  }) async {
    try {
      final RemotePipesIsarModel remotePipesIsarModel = RemotePipesIsarModel()
        ..domainName = remotePipesDomainName;

      await isar.writeTxn(() async {
        await isar.remotePipesIsarModels.clear();
        await isar.remotePipesIsarModels.put(remotePipesIsarModel);
      });

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
      final HubEntityIsarModel hubEntityIsarModel = HubEntityIsarModel()
        ..hubNetworkBssid = hubNetworkBssid
        ..networkName = networkName
        ..lastKnownIp = lastKnownIp;

      await isar.writeTxn(() async {
        await isar.hubEntityIsarModels.clear();
        await isar.hubEntityIsarModels.put(hubEntityIsarModel);
      });

      logger.i('Hub entity got saved to local storage');
    } catch (e) {
      logger.e('Error saving Hub entity to local storage: $e');

      return left(const LocalDbFailures.unexpected());
    }
    return right(unit);
  }

  @override
  Future<String> getHomeId() async {
    final List<HomeEntityIsarModel> homeEntityIsarModelList =
        await isar.homeEntityIsarModels.where().findAll();

    return homeEntityIsarModelList[0].homeId;
  }

  @override
  Future<Either<LocalDbFailures, String>> getRemotePipesDnsName() async {
    try {
      final List<RemotePipesIsarModel> remotePipesIsarModelFromDb =
          await isar.remotePipesIsarModels.where().findAll();

      if (remotePipesIsarModelFromDb.isNotEmpty) {
        final String remotePipesDnsName =
            remotePipesIsarModelFromDb[0].domainName;
        logger.i(
          'Remote pipes domain name is: '
          '${remotePipesIsarModelFromDb[0].domainName}',
        );

        return right(remotePipesDnsName);
      }

      logger.i("Didn't find any remote pipes in the local DB");
    } catch (e) {
      logger.e('Local DB isar error: $e');
    }
    return left(const LocalDbFailures.unexpected());
  }

  @override
  Future<Either<LocalDbFailures, String>> getHubEntityLastKnownIp() async {
    try {
      final List<HubEntityIsarModel> hubEntityIsarModelFromDb =
          await isar.hubEntityIsarModels.where().findAll();

      if (hubEntityIsarModelFromDb.isNotEmpty) {
        final String hubLastKnownIp = hubEntityIsarModelFromDb[0].lastKnownIp;
        logger.i(
          'Hub entity lastKnownIp is: '
          '${hubEntityIsarModelFromDb[0].lastKnownIp}',
        );

        return right(hubLastKnownIp);
      }

      logger.i("Didn't find any Hub entity in the local DB");
    } catch (e) {
      logger.e('Local DB isar error: $e');
    }
    return left(const LocalDbFailures.unexpected());
  }

  @override
  Future<Either<LocalDbFailures, String>> getHubEntityNetworkBssid() async {
    try {
      final List<HubEntityIsarModel> hubEntityIsarModelFromDb =
          await isar.hubEntityIsarModels.where().findAll();

      if (hubEntityIsarModelFromDb.isNotEmpty) {
        final String hubNetworkBssid =
            hubEntityIsarModelFromDb[0].hubNetworkBssid;
        logger.i(
          'Hub entity network bssid is: '
          '${hubEntityIsarModelFromDb[0].hubNetworkBssid}',
        );

        return right(hubNetworkBssid);
      }

      logger.i("Didn't find any Hub entity in the local DB");
    } catch (e) {
      logger.e('Local DB isar error: $e');
    }
    return left(const LocalDbFailures.unexpected());
  }

  @override
  Future<Either<LocalDbFailures, String>> getHubEntityNetworkName() async {
    try {
      final List<HubEntityIsarModel> hubEntityIsarModelFromDb =
          await isar.hubEntityIsarModels.where().findAll();

      if (hubEntityIsarModelFromDb.isNotEmpty) {
        final String hubNetworkName = hubEntityIsarModelFromDb[0].networkName;
        logger.i(
          'Hub entity network name is: '
          '${hubEntityIsarModelFromDb[0].networkName}',
        );

        return right(hubNetworkName);
      }

      logger.i("Didn't find any Hub entity in the local DB");
    } catch (e) {
      logger.e('Local DB isar error: $e');
    }
    return left(const LocalDbFailures.unexpected());
  }
}
