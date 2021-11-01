import 'package:cybear_jinni/domain/local_db/i_local_db_repository.dart';
import 'package:cybear_jinni/domain/local_db/local_db_failures.dart';
import 'package:cybear_jinni/infrastructure/hive_local_db/hive_objects/remote_pipes_hive_model.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILocalDbRepository)
class HiveRepository extends ILocalDbRepository {
  HiveRepository() {
    asyncConstractor();
  }

  Future<void> asyncConstractor() async {
    Hive.registerAdapter(RemotePipesHiveModelAdapter());
  }

  @override
  Future<Either<LocalDbFailures, Unit>> saveRemotePipes(
    String remotePipesDomainName,
  ) async {
    try {
      final Box<RemotePipesHiveModel> remotePipesBox =
          await Hive.openBox<RemotePipesHiveModel>(remotePipesBoxPath);

      final RemotePipesHiveModel remotePipesHiveModel = RemotePipesHiveModel()
        ..domainName = remotePipesDomainName;

      remotePipesBox.add(remotePipesHiveModel);

      await remotePipesBox.close();

      return right(unit);
    } catch (e) {
      return left(const LocalDbFailures.unexpected());
    }
  }

  @override
  Future<Either<LocalDbFailures, Unit>> getRemotePipes() async {
    try {
      final Box<RemotePipesHiveModel> remotePipesBox =
          await Hive.openBox<RemotePipesHiveModel>(remotePipesBoxPath);

      final List<RemotePipesHiveModel> remotePipesHiveModelFromDb =
          remotePipesBox.values.toList().cast<RemotePipesHiveModel>();

      if (remotePipesHiveModelFromDb.isNotEmpty) {
        logger.i(remotePipesHiveModelFromDb[0].domainName);
        return right(unit);
      }
      await remotePipesBox.close();
    } catch (e) {
      logger.e('Local DB hive error: $e');
    }
    return left(const LocalDbFailures.unexpected());
  }
}
