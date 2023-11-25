import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/domain/hub/hub_entity.dart';
import 'package:cybear_jinni/domain/hub/hub_failures.dart';
import 'package:cybear_jinni/infrastructure/hub_client/hub_connection_repository.dart';
import 'package:dartz/dartz.dart';

abstract interface class IHubConnectionRepository {
  static IHubConnectionRepository? _instance;

  static IHubConnectionRepository get instance {
    return _instance ??= HubConnectionRepository();
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
