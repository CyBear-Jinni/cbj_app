import 'package:cybear_jinni/domain/remote_pipes/remote_pipes_entity.dart';
import 'package:cybear_jinni/domain/remote_pipes/remote_pipes_failures.dart';
import 'package:dartz/dartz.dart';

abstract class IRemotePipesRepository {
  Future<Either<RemotePipesFailures, Unit>> setRemotePipesDomainName(
    RemotePipesEntity remotePipesEntity,
  );
}
