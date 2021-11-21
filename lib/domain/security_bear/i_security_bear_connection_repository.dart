import 'package:cybear_jinni/domain/security_bear/security_bear_failures.dart';
import 'package:cybear_jinni/infrastructure/core/gen/security_bear/client/protoc_as_dart/security_bear_connections.pbgrpc.dart';
import 'package:dartz/dartz.dart';

abstract class ISecurityBearConnectionRepository {
  Future<Either<SecurityBearFailures, CompSecurityBearInfo>>
      getSecurityBearCompInfo(
    CompSecurityBearInfo appInfoForSecurityBear,
  );

  Future<Either<SecurityBearFailures, Unit>> searchForSecurityBear();
}
