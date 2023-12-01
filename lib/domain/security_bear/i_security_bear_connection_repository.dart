import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/domain/security_bear/security_bear_failures.dart';
import 'package:cybear_jinni/infrastructure/core/gen/security_bear/client/protoc_as_dart/security_bear_connections.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/security_bear_client/security_bear_connection_repository.dart';
import 'package:dartz/dartz.dart';

abstract interface class ISecurityBearConnectionRepository {
  static ISecurityBearConnectionRepository? _instance;

  static ISecurityBearConnectionRepository get instance {
    return _instance ??= SecurityBearConnectionRepository();
  }

  Future<Either<SecurityBearFailures, CompSecurityBearInfo>>
      getSecurityBearCompInfo(
    CompSecurityBearInfo appInfoForSecurityBear,
  );

  Future<Either<SecurityBearFailures, Unit>> searchForSecurityBear();

  Future<Either<SecurityBearFailures, Unit>> setSecurityBearWiFiInformation(
    CBJCompEntity compEntity,
  );

  Future<Either<SecurityBearFailures, Unit>>
      searchForSecurityBearInCurrentNetwork();
}
