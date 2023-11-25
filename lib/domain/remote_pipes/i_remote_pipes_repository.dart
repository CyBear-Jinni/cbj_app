import 'package:cybear_jinni/domain/remote_pipes/remote_pipes_entity.dart';
import 'package:cybear_jinni/domain/remote_pipes/remote_pipes_failures.dart';
import 'package:cybear_jinni/infrastructure/remote_pipes/remote_pipes_repository.dart';
import 'package:dartz/dartz.dart';

abstract interface class IRemotePipesRepository {
  static IRemotePipesRepository? _instance;

  static IRemotePipesRepository get instance {
    return _instance ??= RemotePipesRepository();
  }

  Future<Either<RemotePipesFailures, Unit>> setRemotePipesDomainName(
    RemotePipesEntity remotePipesEntity,
  );
}
