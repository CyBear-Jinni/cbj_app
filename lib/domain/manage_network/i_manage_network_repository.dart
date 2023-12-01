import 'package:cybear_jinni/domain/home_user/home_user_failures.dart';
import 'package:cybear_jinni/domain/manage_network/manage_network_entity.dart';
import 'package:cybear_jinni/infrastructure/manage_wifi/manage_wifi_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract interface class IManageNetworkRepository {
  static IManageNetworkRepository? _instance;

  static IManageNetworkRepository get instance {
    return _instance ??= ManageWiFiRepository();
  }

  static ManageNetworkEntity? manageWiFiEntity;

  Future<Either<HomeUserFailures, String?>> doesWiFiEnabled();

  Stream<Either<HomeUserFailures, KtList<ManageNetworkEntity>>>
      scanWiFiNetworks();

  Future<Either<HomeUserFailures, Unit>> connectToWiFi(
    ManageNetworkEntity networkEntity,
  );

  Future<Either<HomeUserFailures, Unit>> openAccessPoint(
    ManageNetworkEntity networkEntity,
  );

  Future<Either<HomeUserFailures, Unit>> doesAccessPointOpen();
}
