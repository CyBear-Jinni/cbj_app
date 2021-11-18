import 'dart:io';

import 'package:cybear_jinni/domain/software_info/i_software_info_repository.dart';
import 'package:cybear_jinni/domain/software_info/software_info_entity.dart';
import 'package:cybear_jinni/domain/software_info/software_info_failures.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_app_server/proto_gen_date.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_app_server/protoc_as_dart/cbj_app_connections.pbgrpc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

@LazySingleton(as: ISoftwareInfoRepository)
class SoftwareInfoRepository implements ISoftwareInfoRepository {
  @override
  Future<Either<SoftwareInfoFailures, SoftwareInfoEntity>>
      getAppSoftwareInfo() async {
    try {
      final PackageInfo packageInfo = await PackageInfo.fromPlatform();
      final NetworkInfo _networkInfo = NetworkInfo();

      final CbjAppIno cbjAppIno = CbjAppIno(
        deviceName: 'cbj App',
        pubspecYamlVersion: packageInfo.version,
        protoLastGenDate: appServerProtocGenDate,
      );

      final CompAppSpecs compAppSpecs = CompAppSpecs(
        compOs: Platform.operatingSystem,
        compIp: await _networkInfo.getWifiIP(),
      );

      final CompAppInfo compAppInfo = CompAppInfo(
        cbjInfo: cbjAppIno,
        compSpecs: compAppSpecs,
      );

      final SoftwareInfoEntity softwareInfoEntity =
          SoftwareInfoEntity.compAppInfo(compAppInfo);

      return right(softwareInfoEntity);
    } catch (e) {
      return left(const SoftwareInfoFailures.unexpected());
    }
  }

  @override
  Future<Either<SoftwareInfoFailures, SoftwareInfoEntity>>
      getHubSoftwareInfo() async {
    // final SoftwareInfoDtos remotePipesDtos =
    //     remotePipesEntity.toInfrastructure();
    // final String remotePipesDtosAsJson = jsonEncode(remotePipesDtos.toJson());
    //
    // final ClientStatusRequests clientStatusRequests = ClientStatusRequests(
    //   allRemoteCommands: remotePipesDtosAsJson,
    //   sendingType: SendingType.remotePipesInformation,
    // );
    //
    // AppRequestsToHub.appRequestsToHubStreamController.sink
    //     .add(clientStatusRequests);

    // getIt<ILocalDbRepository>()
    //     .saveSoftwareInfo(remotePipesDomainName: remotePipesDtos.domainName);
    // TODO: implement getHubSoftwareInfo
    throw UnimplementedError();
  }

  @override
  Future<Either<SoftwareInfoFailures, SoftwareInfoEntity>>
      getSecurityBearSoftwareInfo() async {
    // TODO: implement getSecurityBearSoftwareInfo
    throw UnimplementedError();
  }
}
