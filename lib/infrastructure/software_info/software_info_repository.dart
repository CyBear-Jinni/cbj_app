import 'dart:io';

import 'package:cybear_jinni/domain/hub/hub_failures.dart';
import 'package:cybear_jinni/domain/hub/i_hub_connection_repository.dart';
import 'package:cybear_jinni/domain/software_info/i_software_info_repository.dart';
import 'package:cybear_jinni/domain/software_info/software_info_entity.dart';
import 'package:cybear_jinni/domain/software_info/software_info_failures.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_app_server/proto_gen_date.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_app_server/protoc_as_dart/cbj_app_connections.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/proto_gen_date.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/utils.dart';
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
    try {
      CompHubInfo? appInfoForHub =
          (await getAppInfoForHub()).fold((l) => null, (r) => r);

      appInfoForHub ??= CompHubInfo();

      final Either<HubFailures, CompHubInfo> hubResponse =
          await getIt<IHubConnectionRepository>().getHubCompInfo(appInfoForHub);

      return hubResponse.fold(
        (l) => left(const SoftwareInfoFailures.unexpected()),
        (r) {
          return right(SoftwareInfoEntity.compHubInfo(r));
        },
      );
    } catch (e) {
      logger.e('Software info from hub error\n$e');
      return left(const SoftwareInfoFailures.unexpected());
    }
  }

  @override
  Future<Either<SoftwareInfoFailures, SoftwareInfoEntity>>
      getSecurityBearSoftwareInfo() async {
    return left(const SoftwareInfoFailures.unexpected());
  }

  Future<Either<SoftwareInfoFailures, CompHubInfo>> getAppInfoForHub() async {
    try {
      final PackageInfo packageInfo = await PackageInfo.fromPlatform();
      final NetworkInfo _networkInfo = NetworkInfo();

      final CbjHubIno cbjHubIno = CbjHubIno(
        deviceName: 'cbj App',
        pubspecYamlVersion: packageInfo.version,
        protoLastGenDate: hubClientProtocGenDate,
      );

      final CompHubSpecs compHubSpecs = CompHubSpecs(
        compOs: Platform.operatingSystem,
        compIp: await _networkInfo.getWifiIP(),
      );

      final CompHubInfo compAppInfo = CompHubInfo(
        cbjInfo: cbjHubIno,
        compSpecs: compHubSpecs,
      );

      return right(compAppInfo);
    } catch (e) {
      return left(const SoftwareInfoFailures.unexpected());
    }
  }
}
