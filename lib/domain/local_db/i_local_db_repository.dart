import 'package:cybear_jinni/domain/local_db/local_db_failures.dart';
import 'package:dartz/dartz.dart';

abstract class ILocalDbRepository {
  String remotePipesBoxPath = 'remotePipesBox';

  Future<Either<LocalDbFailures, Unit>> saveRemotePipes(
    String remotePipesDomainName,
  );

  Future<Either<LocalDbFailures, Unit>> getRemotePipes();
}
