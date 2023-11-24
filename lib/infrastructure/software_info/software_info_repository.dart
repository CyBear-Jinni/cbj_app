import 'dart:io';

import 'package:cbj_integrations_controller/infrastructure/gen/cbj_app_server/proto_gen_date.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_app_server/protoc_as_dart/cbj_app_connections.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/proto_gen_date.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/domain/hub/hub_failures.dart';
import 'package:cybear_jinni/domain/hub/i_hub_connection_repository.dart';
import 'package:cybear_jinni/domain/security_bear/i_security_bear_connection_repository.dart';
import 'package:cybear_jinni/domain/security_bear/security_bear_failures.dart';
import 'package:cybear_jinni/domain/software_info/i_software_info_repository.dart';
import 'package:cybear_jinni/domain/software_info/software_info_entity.dart';
import 'package:cybear_jinni/domain/software_info/software_info_failures.dart';
import 'package:cybear_jinni/infrastructure/core/gen/security_bear/client/protoc_as_dart/security_bear_connections.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/core/gen/security_bear/proto_gen_date.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SoftwareInfoRepository implements ISoftwareInfoRepository {
  @override
  Future<Either<SoftwareInfoFailures, SoftwareInfoEntity>>
      getAppSoftwareInfo() async {
    try {
      final PackageInfo packageInfo = await PackageInfo.fromPlatform();
      final NetworkInfo networkInfo = NetworkInfo();

      final CbjAppIno cbjAppIno = CbjAppIno(
        deviceName: 'cbj App',
        pubspecYamlVersion: packageInfo.version,
        pubspecYamlBuildNumber: packageInfo.buildNumber,
        protoLastGenDate: appServerProtocGenDate,
        dartSdkVersion: Platform.version,
      );

      final CompAppSpecs compAppSpecs = CompAppSpecs(
        compOs: Platform.operatingSystem,
        compIp: await networkInfo.getWifiIP(),
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
          await IHubConnectionRepository.instance.getHubCompInfo(appInfoForHub);

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
    try {
      CompSecurityBearInfo? appInfoForSecurityBear =
          (await getAppInfoForSecurityBear()).fold((l) => null, (r) => r);

      appInfoForSecurityBear ??= CompSecurityBearInfo();

      final Either<SecurityBearFailures, CompSecurityBearInfo>
          securityBearResponse = await ISecurityBearConnectionRepository
              .instance
              .getSecurityBearCompInfo(appInfoForSecurityBear);

      return securityBearResponse.fold(
        (l) => left(const SoftwareInfoFailures.unexpected()),
        (r) {
          return right(SoftwareInfoEntity.compSecurityBearInfo(r));
        },
      );
    } catch (e) {
      logger.e('Software info from Security Bear error\n$e');
      return left(const SoftwareInfoFailures.unexpected());
    }
  }

  Future<Either<SoftwareInfoFailures, CompHubInfo>> getAppInfoForHub() async {
    try {
      final PackageInfo packageInfo = await PackageInfo.fromPlatform();
      final NetworkInfo networkInfo = NetworkInfo();

      final CbjHubIno cbjHubIno = CbjHubIno(
        entityName: 'cbj App',
        pubspecYamlVersion: packageInfo.version,
        protoLastGenDate: hubServerProtocGenDate,
        dartSdkVersion: Platform.version,
      );

      final CompHubSpecs compHubSpecs = CompHubSpecs(
        compOs: Platform.operatingSystem,
        compIp: await networkInfo.getWifiIP(),
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

  Future<Either<SoftwareInfoFailures, CompSecurityBearInfo>>
      getAppInfoForSecurityBear() async {
    try {
      final PackageInfo packageInfo = await PackageInfo.fromPlatform();
      final NetworkInfo networkInfo = NetworkInfo();

      final CbjSecurityBearIno cbjSecurityBearIno = CbjSecurityBearIno(
        deviceName: 'cbj App',
        pubspecYamlVersion: packageInfo.version,
        protoLastGenDate: securityBearServerProtocGenDate,
        dartSdkVersion: Platform.version,
      );

      final CompSecurityBearSpecs compSecurityBearSpecs = CompSecurityBearSpecs(
        compOs: Platform.operatingSystem,
        compIp: await networkInfo.getWifiIP(),
      );

      final CompSecurityBearInfo compAppInfo = CompSecurityBearInfo(
        cbjInfo: cbjSecurityBearIno,
        compSpecs: compSecurityBearSpecs,
      );

      return right(compAppInfo);
    } catch (e) {
      return left(const SoftwareInfoFailures.unexpected());
    }
  }
}
