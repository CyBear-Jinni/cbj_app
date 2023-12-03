import 'dart:io';

import 'package:cbj_integrations_controller/domain/hub/hub_failures.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_app_server/proto_gen_date.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_app_server/protoc_as_dart/cbj_app_connections.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/proto_gen_date.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/domain/hub/i_hub_connection_repository.dart';
import 'package:cybear_jinni/domain/security_bear/i_security_bear_connection_repository.dart';
import 'package:cybear_jinni/domain/security_bear/security_bear_failures.dart';
import 'package:cybear_jinni/domain/software_info/software_info_entity.dart';
import 'package:cybear_jinni/domain/software_info/software_info_failures.dart';
import 'package:cybear_jinni/infrastructure/core/gen/security_bear/client/protoc_as_dart/security_bear_connections.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/core/gen/security_bear/proto_gen_date.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'package:cybear_jinni/infrastructure/software_info/software_info_repository.dart';

abstract interface class ISoftwareInfoRepository {
  static ISoftwareInfoRepository? _instance;

  static ISoftwareInfoRepository get instance {
    return _instance ??= _SoftwareInfoRepository();
  }

  Future<Either<SoftwareInfoFailures, SoftwareInfoEntity>> getAppSoftwareInfo();

  Future<Either<SoftwareInfoFailures, SoftwareInfoEntity>> getHubSoftwareInfo();

  Future<Either<SoftwareInfoFailures, SoftwareInfoEntity>>
      getSecurityBearSoftwareInfo();
}
