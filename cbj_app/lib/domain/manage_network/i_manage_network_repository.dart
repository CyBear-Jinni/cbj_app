import 'package:cybear_jinni/domain/home_user/home_user_failures.dart';
import 'package:cybear_jinni/domain/manage_network/manage_network_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IManageNetworkRepository {
  // watch devices
  // watch only a
  // CUD

  // C Read UD
  static ManageNetworkEntity? manageWiFiEntity;

  Future<Either<HomeUserFailures, Unit>> doesWiFiEnabled();

  Stream<Either<HomeUserFailures, KtList<ManageNetworkEntity>>>
      scanWiFiNetworks();

  Future<Either<HomeUserFailures, Unit>> connectToWiFi(
      ManageNetworkEntity networkEntity);

  Future<Either<HomeUserFailures, Unit>> openAccessPoint(
      ManageNetworkEntity networkEntity);

  Future<Either<HomeUserFailures, Unit>> doesAccessPointOpen();
}
