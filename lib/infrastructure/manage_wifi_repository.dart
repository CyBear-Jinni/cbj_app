part of 'package:cybear_jinni/domain/manage_network/i_manage_network_repository.dart';

class _ManageWiFiRepository implements IManageNetworkRepository {
  final NetworkSecurity networkSecurity = NetworkSecurity.WPA;

  @override
  Future<Either<HomeUserFailures, String?>> doesWiFiEnabled() async {
    try {
      final bool wifiEnabled = await WiFiForIoTPlugin.isEnabled();
      if (wifiEnabled) {
        return right(await getCurrentWifiName());
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
    ManageNetworkEntity networkEntity,
  ) async {
    try {
      final String ssid = networkEntity.name!.getOrCrash();
      final String pass = networkEntity.pass!.getOrCrash();

      final bool connectedToWiFiSuccess = await WiFiForIoTPlugin.connect(
        ssid,
        password: pass,
        security: networkSecurity,
      );

      if (connectedToWiFiSuccess) {
        IManageNetworkRepository.manageWiFiEntity = ManageNetworkEntity(
          name: ManageWiFiName(ssid),
          pass: ManageWiFiPass(pass),
        );
        return right(unit);
      }
      return left(const HomeUserFailures.cannotConnectToWiFi());
    } catch (e) {
      return left(const HomeUserFailures.unexpected());
    }
  }

  @override
  Future<Either<HomeUserFailures, Unit>> openAccessPoint(
    ManageNetworkEntity networkEntity,
  ) async {
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
      // final bool isAPEnabled = await WiFiForIoTPlugin.isWiFiAPEnabled();
      // if (isAPEnabled || true) {
      return right(unit);
      // }
    } catch (e) {
      return left(const HomeUserFailures.unexpected());
    }
  }

  ///  Does not work if you do not turn your location (not permission) on https://github.com/flutter/flutter/issues/51529 android 10+ rules
  Future<String?> getCurrentWifiName() async {
    String? wifiName = '';

    try {
      if (Platform.isIOS || Platform.isAndroid) {
        if (await Permission.location.serviceStatus.isEnabled) {
          // permission is enabled
          final PermissionStatus status = await Permission.location.status;
          if (status.isDenied || status.isRestricted) {
            if (await Permission.location.request().isGranted) {
              // Either the permission was already granted before or the user just granted it.
            }
          }
          wifiName = await NetworkInfo().getWifiName();
        } else {
          logger.w('Permission is not enabled');
        }
      } else {
        logger.w('Does not support this platform');
      }
    } on PlatformException catch (e) {
      logger.e('Failed to get Wifi Name\n$e');
//      wifiName = "Failed to get Wifi Name";
    } catch (exception) {
      logger.e(exception.toString());
    }
    return wifiName;
  }
}
