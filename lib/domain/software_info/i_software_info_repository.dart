import 'package:cybear_jinni/domain/software_info/software_info_entity.dart';
import 'package:cybear_jinni/domain/software_info/software_info_failures.dart';
import 'package:cybear_jinni/infrastructure/software_info/software_info_repository.dart';
import 'package:dartz/dartz.dart';

abstract interface class ISoftwareInfoRepository {
  static ISoftwareInfoRepository? _instance;

  static ISoftwareInfoRepository get instance {
    return _instance ??= SoftwareInfoRepository();
  }

  Future<Either<SoftwareInfoFailures, SoftwareInfoEntity>> getAppSoftwareInfo();

  Future<Either<SoftwareInfoFailures, SoftwareInfoEntity>> getHubSoftwareInfo();

  Future<Either<SoftwareInfoFailures, SoftwareInfoEntity>>
      getSecurityBearSoftwareInfo();
}
