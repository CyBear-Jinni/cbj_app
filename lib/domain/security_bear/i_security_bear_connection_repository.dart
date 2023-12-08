import 'dart:io';

import 'package:cbj_integrations_controller/infrastructure/gen/security_bear_server_d/protoc_as_dart/security_bear_connections.pbgrpc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_entity.dart';
import 'package:cybear_jinni/domain/manage_network/i_manage_network_repository.dart';
import 'package:cybear_jinni/domain/manage_network/manage_network_entity.dart';
import 'package:cybear_jinni/domain/manage_network/manage_network_value_objects.dart';
import 'package:cybear_jinni/domain/security_bear/security_bear_entity.dart';
import 'package:cybear_jinni/domain/security_bear/security_bear_failures.dart';
import 'package:cybear_jinni/domain/security_bear/security_bear_value_objects.dart';
import 'package:cybear_jinni/infrastructure/security_bear_client/security_bear_server_client.dart';
import 'package:cybear_jinni/presentation/core/injection.dart';
import 'package:cybear_jinni/presentation/core/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:location/location.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:network_tools/network_tools.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;

part 'package:cybear_jinni/infrastructure/security_bear_client/security_bear_connection_repository.dart';

abstract interface class ISecurityBearConnectionRepository {
  static ISecurityBearConnectionRepository? _instance;

  static ISecurityBearConnectionRepository get instance {
    return _instance ??= _SecurityBearConnectionRepository();
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
