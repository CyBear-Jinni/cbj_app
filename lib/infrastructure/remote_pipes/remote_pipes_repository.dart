import 'package:cybear_jinni/domain/remote_pipes/i_remote_pipes_repository.dart';
import 'package:cybear_jinni/domain/remote_pipes/remote_pipes_entity.dart';
import 'package:cybear_jinni/domain/remote_pipes/remote_pipes_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IRemotePipesRepository)
class RemotePipesRepository implements IRemotePipesRepository {
  @override
  Future<Either<RemotePipesFailures, Unit>> setRemotePipesDomainName(
    RemotePipesEntity remotePipesEntity,
  ) async {
    try {
      print(remotePipesEntity.domainName!.getOrCrash());
      return right(unit);
      return left(const RemotePipesFailures.unexpected());
    } catch (e) {
      return left(const RemotePipesFailures.unexpected());
    }
  }
}
