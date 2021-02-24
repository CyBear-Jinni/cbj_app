import 'package:cybear_jinni/domain/home_user/home_user_failures.dart';
import 'package:cybear_jinni/domain/manage_wifi/i_manage_wifi_repository.dart';
import 'package:cybear_jinni/domain/manage_wifi/manage_wifi_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:wifi_iot/wifi_iot.dart';

@LazySingleton(as: IManageWiFiRepository)
class ManageWiFiRepository implements IManageWiFiRepository {
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
  Stream<Either<HomeUserFailures, KtList<ManageWiFiEntity>>>
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
      ManageWiFiEntity wiFiEntity) async {
    try {
      final String ssid = wiFiEntity.name.getOrCrash();
      final String pass = wiFiEntity.passpass.getOrCrash();

      final bool connectedToWiFiSucess = await WiFiForIoTPlugin.connect(ssid,
          password: pass, security: networkSecurity);

      if (connectedToWiFiSucess) {
        return right(unit);
      }
      return left(const HomeUserFailures.cannotConnectToWiFi());
    } catch (e) {
      return left(const HomeUserFailures.unexpected());
    }
  }
}
