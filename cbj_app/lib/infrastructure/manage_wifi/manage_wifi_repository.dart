import 'package:cybear_jinni/domain/home_user/home_user_failures.dart';
import 'package:cybear_jinni/domain/manage_network/i_manage_network_repository.dart';
import 'package:cybear_jinni/domain/manage_network/manage_network_entity.dart';
import 'package:cybear_jinni/domain/manage_network/manage_network_value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:wifi_iot/wifi_iot.dart';

@LazySingleton(as: IManageNetworkRepository)
class ManageWiFiRepository implements IManageNetworkRepository {
  final NetworkSecurity networkSecurity = NetworkSecurity.WPA;

  @override
  Future<Either<HomeUserFailures, Unit>> doesWiFiEnabled() async {
    try {
      final bool wifiEnabled = await WiFiForIoTPlugin.isEnabled();
      if (wifiEnabled) {
        return right(unit);
      }
      return left(const HomeUserFailures.wifiDisabled());
    } catch (e) {
      return left(const HomeUserFailures.unexpected());
    }
  }

  @override
  Stream<Either<HomeUserFailures, KtList<ManageNetworkEntity>>>
      scanWiFiNetworks() async* {
    // List<WifiNetwork> htResultNetwork;
    // try {
    //   htResultNetwork = await WiFiForIoTPlugin.loadWifiList();
    //   for ()
    //
    // } on PlatformException {
    //   htResultNetwork = <WifiNetwork>[];
    //   yield left(const HomeUserFailures.unexpected());
    // }

    // TODO: implement ScanWiFiNetworks
    throw UnimplementedError();
  }

  @override
  Future<Either<HomeUserFailures, Unit>> connectToWiFi(
      ManageNetworkEntity networkEntity) async {
    try {
      final String ssid = networkEntity.name!.getOrCrash();
      final String pass = networkEntity.pass!.getOrCrash();

      final bool connectedToWiFiSuccess = await WiFiForIoTPlugin.connect(ssid,
          password: pass, security: networkSecurity);

      if (connectedToWiFiSuccess) {
        IManageNetworkRepository.manageWiFiEntity = ManageNetworkEntity(
            name: ManageWiFiName(ssid), pass: ManageWiFiPass(pass));
        return right(unit);
      }
      return left(const HomeUserFailures.cannotConnectToWiFi());
    } catch (e) {
      return left(const HomeUserFailures.unexpected());
    }
  }

  @override
  Future<Either<HomeUserFailures, Unit>> openAccessPoint(
      ManageNetworkEntity networkEntity) async {
    try {
      final String ssid = networkEntity.name!.getOrCrash();
      final String pass = networkEntity.pass!.getOrCrash();

      final bool createdAccessPoint =
          await WiFiForIoTPlugin.registerWifiNetwork(
        ssid,
        password: pass,
      );

      if (createdAccessPoint) {
        return right(unit);
      }
      return left(const HomeUserFailures.unexpected());
    } catch (e) {
      return left(const HomeUserFailures.unexpected());
    }
  }

  @override
  Future<Either<HomeUserFailures, Unit>> doesAccessPointOpen() async {
    try {
      WiFiForIoTPlugin.setWiFiAPEnabled(true);
      final bool isAPEnabled = await WiFiForIoTPlugin.isWiFiAPEnabled();
      if (isAPEnabled) {
        return right(unit);
      }
      return left(const HomeUserFailures.accessPointIsNotOpen());
    } catch (e) {
      return left(const HomeUserFailures.unexpected());
    }
  }
}
