import 'dart:async';
import 'dart:io';

import 'package:cbj_integrations_controller/domain/hub/hub_entity.dart';
import 'package:cbj_integrations_controller/domain/hub/hub_failures.dart';
import 'package:cbj_integrations_controller/domain/hub/hub_value_objects.dart';
import 'package:cbj_integrations_controller/domain/local_db/local_db_failures.dart';
import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cbj_integrations_controller/infrastructure/hub_client/hub_client.dart';
import 'package:cbj_integrations_controller/infrastructure/hub_client/hub_client_demo.dart';
import 'package:cbj_integrations_controller/infrastructure/hub_client/hub_dtos.dart';
import 'package:cbj_integrations_controller/utils.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:cybear_jinni/domain/i_local_db_repository.dart';
import 'package:cybear_jinni/presentation/core/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:location/location.dart';
import 'package:multicast_dns/multicast_dns.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:network_tools/network_tools.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;
import 'package:wifi_iot/wifi_iot.dart';

part 'package:cybear_jinni/infrastructure/hub_client/hub_connection_repository.dart';

abstract class IHubConnectionRepository {
  static IHubConnectionRepository? _instance;

  static IHubConnectionRepository get instance {
    return _instance ??= _HubConnectionRepository();
  }

  static HubEntity? hubEntity;

  Future<void> connectWithHub({bool demoMod = false});

  Future<Either<HubFailures, CompHubInfo>> getHubCompInfo(
    CompHubInfo appInfoForHub,
  );

  Future<void> closeConnection();

  Future<Either<HubFailures, Unit>> searchForHub({
    String? deviceIpOnTheNetwork,
    bool? isThatTheIpOfTheHub,
  });

  Future<void> saveHubIP(String hubIP);
}
