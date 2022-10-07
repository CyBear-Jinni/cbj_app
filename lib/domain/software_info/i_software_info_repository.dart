import 'package:cybear_jinni/domain/software_info/software_info_entity.dart';
import 'package:cybear_jinni/domain/software_info/software_info_failures.dart';
import 'package:dartz/dartz.dart';

abstract class ISoftwareInfoRepository {
  Future<Either<SoftwareInfoFailures, SoftwareInfoEntity>> getAppSoftwareInfo();

  Future<Either<SoftwareInfoFailures, SoftwareInfoEntity>> getHubSoftwareInfo();

  Future<Either<SoftwareInfoFailures, SoftwareInfoEntity>>
      getSecurityBearSoftwareInfo();
}
