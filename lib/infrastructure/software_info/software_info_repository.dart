import 'dart:convert';

import 'package:cybear_jinni/domain/software_info/i_software_info_repository.dart';
import 'package:cybear_jinni/domain/software_info/software_info_entity.dart';
import 'package:cybear_jinni/domain/software_info/software_info_failures.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/hub_client.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/software_info/software_info_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISoftwareInfoRepository)
class SoftwareInfoRepository implements ISoftwareInfoRepository {
  @override
  Future<Either<SoftwareInfoFailures, Unit>> setSoftwareInfoDomainName(
    SoftwareInfoEntity remotePipesEntity,
  ) async {
    try {
      final SoftwareInfoDtos remotePipesDtos =
          remotePipesEntity.toInfrastructure();
      final String remotePipesDtosAsJson = jsonEncode(remotePipesDtos.toJson());

      final ClientStatusRequests clientStatusRequests = ClientStatusRequests(
        allRemoteCommands: remotePipesDtosAsJson,
        sendingType: SendingType.remotePipesInformation,
      );

      AppRequestsToHub.appRequestsToHubStreamController.sink
          .add(clientStatusRequests);

      // getIt<ILocalDbRepository>()
      //     .saveSoftwareInfo(remotePipesDomainName: remotePipesDtos.domainName);

      return right(unit);
    } catch (e) {
      return left(const SoftwareInfoFailures.unexpected());
    }
  }
}
