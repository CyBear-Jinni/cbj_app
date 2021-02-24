import 'package:cybear_jinni/domain/home_user/home_user_failures.dart';
import 'package:cybear_jinni/domain/manage_wifi/manage_wifi_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IManageWiFiRepository {
  // watch devices
  // watch only a
  // CUD

  // C Read UD

  Future<Either<HomeUserFailures, Unit>> doesWiFiEnabled();

  Stream<Either<HomeUserFailures, KtList<ManageWiFiEntity>>> scanWiFiNetworks();

  Future<Either<HomeUserFailures, Unit>> connectToWiFi(
      ManageWiFiEntity wiFiEntity);
}
