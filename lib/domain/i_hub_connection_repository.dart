import 'dart:async';
import 'dart:io';

import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:cybearjinni/domain/i_local_db_repository.dart';
import 'package:cybearjinni/infrastructure/core/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:location/location.dart';
import 'package:multicast_dns/multicast_dns.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;
import 'package:wifi_iot/wifi_iot.dart';

part 'package:cybearjinni/infrastructure/hub_client/hub_connection_repository.dart';

@Deprecated(
  'Old architecture. Replaced with ConnectionsService. Delete after Re adding Hub comunication',
)
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
