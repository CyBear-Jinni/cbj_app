import 'dart:convert';

import 'package:cybear_jinni/domain/remote_pipes/i_remote_pipes_repository.dart';
import 'package:cybear_jinni/domain/remote_pipes/remote_pipes_entity.dart';
import 'package:cybear_jinni/domain/remote_pipes/remote_pipes_failures.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/hub_client.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IRemotePipesRepository)
class RemotePipesRepository implements IRemotePipesRepository {
  @override
  Future<Either<RemotePipesFailures, Unit>> setRemotePipesDomainName(
    RemotePipesEntity remotePipesEntity,
  ) async {
    try {
      // TODO: Take the domain name and send it to the Hub
      // TODO: Save the domain name locally, and extract it each time the
      //  app get opened

      final String remotePipesDtosAsJson =
          jsonEncode(remotePipesEntity.toInfrastructure().toJson());

      final ClientStatusRequests clientStatusRequests = ClientStatusRequests(
        allRemoteCommands: remotePipesDtosAsJson,
        sendingType: SendingType.remotePipesInformation,
      );

      AppRequestsToHub.appRequestsToHubStreamController.sink
          .add(clientStatusRequests);

      return right(unit);
    } catch (e) {
      return left(const RemotePipesFailures.unexpected());
    }
  }
}
