import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:cybear_jinni/domain/hub/hub_entity.dart';
import 'package:cybear_jinni/domain/hub/hub_failures.dart';
import 'package:cybear_jinni/domain/hub/hub_value_objects.dart';
import 'package:cybear_jinni/domain/hub/i_hub_connection_repository.dart';
import 'package:cybear_jinni/domain/local_db/i_local_db_repository.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/hub_client.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pb.dart';
import 'package:cybear_jinni/infrastructure/hub_connection/hub_dtos.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:multicast_dns/multicast_dns.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;
import 'package:ping_discover_network_forked/ping_discover_network_forked.dart';

@LazySingleton(as: IHubConnectionRepository)
class HubConnectionRepository extends IHubConnectionRepository {
  HubConnectionRepository() {
    if (currentEnv == Env.prod) {
      hubPort = 60055;
    } else {
      hubPort = 50055;
    }
  }

  /// Port to connect to the cbj hub, will change according to the current
  /// running environment
  late int hubPort;

  static HubEntity? hubEntity;

  Future<void> connectWithHub() async {
    if (hubEntity == null) {
      try {
        String? hubNetworkBssid;
        (await getIt<ILocalDbRepository>().getHubEntityNetworkBssid()).fold(
          (l) => throw 'Error getting Hub network Bssid',
          (r) => hubNetworkBssid = r,
        );

        String? hubNetworkName;
        (await getIt<ILocalDbRepository>().getHubEntityNetworkName()).fold(
          (l) => throw 'Error getting Hub network name',
          (r) => hubNetworkName = r,
        );

        String? hubNetworkIp;
        (await getIt<ILocalDbRepository>().getHubEntityLastKnownIp()).fold(
          (l) => throw 'Error getting Hub network IP',
          (r) => hubNetworkIp = r,
        );
        hubEntity = HubDtos(
          hubNetworkBssid: hubNetworkBssid!,
          lastKnownIp: hubNetworkIp!,
          networkName: hubNetworkName!,
        ).toDomain();
      } catch (e) {
        logger.e('Crashed while setting Hub info from local db: $e');
      }
    }

    ConnectivityResult? connectivityResult;
    try {
      connectivityResult = await Connectivity().checkConnectivity();
    } catch (e) {
      logger.w('Cant check connectivity this is probably PC, error: $e');
    }

    // Last Number of bssid can change fix?, need to check if more numbers
    // can do that
    final String? savedWifiBssid = hubEntity?.hubNetworkBssid.getOrCrash();
    final String? savedWifiBssidWithoutLastNumber =
        savedWifiBssid?.substring(0, savedWifiBssid.lastIndexOf(':'));

    final String? wifiBSSID = await NetworkInfo().getWifiBSSID();
    final String? wifiBSSIDWithoutLastNumber =
        wifiBSSID?.substring(0, wifiBSSID.lastIndexOf(':'));

    // Check if you are connected to the home local network for direct
    // communication with the Hub.
    // This block can be false also if user does not improve some permissions
    // or #256 if the app run on the computer and connected with ethernet cable
    // (not effecting connection with WiFi)
    if (connectivityResult != null &&
        connectivityResult == ConnectivityResult.wifi &&
        savedWifiBssidWithoutLastNumber != null &&
        wifiBSSIDWithoutLastNumber != null &&
        savedWifiBssidWithoutLastNumber == wifiBSSIDWithoutLastNumber) {
      logger.i('Connect using direct connection to Hub');

      if (hubEntity?.lastKnownIp.getOrCrash() != null) {
        Socket? testHubConnection;
        try {
          testHubConnection = await Socket.connect(
            hubEntity!.lastKnownIp.getOrCrash(),
            hubPort,
            timeout: const Duration(milliseconds: 500),
          );
          testHubConnection.destroy();
        } catch (e) {
          testHubConnection?.destroy();

          await searchForHub();
        }
      } else {
        await searchForHub();
      }

      await HubClient.createStreamWithHub(
        hubEntity!.lastKnownIp.getOrCrash(),
        hubPort,
      );

      return;
    } else {
      logger.i('Connect using Remote Pipes');
      (await getIt<ILocalDbRepository>().getRemotePipesDnsName()).fold(
        (l) => logger.e('Cant find local Remote Pipes Dns name'),
        (r) => HubClient.createStreamWithHub(r, 50056),
      );
      // Here for easy find and local testing
      // HubClient.createStreamWithHub('127.0.0.1', 50056);
    }
  }

  @override
  Future<Either<HubFailures, CompHubInfo>> getHubCompInfo(
    CompHubInfo appInfoForHub,
  ) async {
    if (hubEntity == null) {
      try {
        String? hubNetworkBssid;
        (await getIt<ILocalDbRepository>().getHubEntityNetworkBssid()).fold(
          (l) => throw 'Error getting Hub network Bssid',
          (r) => hubNetworkBssid = r,
        );

        String? hubNetworkName;
        (await getIt<ILocalDbRepository>().getHubEntityNetworkName()).fold(
          (l) => throw 'Error getting Hub network name',
          (r) => hubNetworkName = r,
        );

        String? hubNetworkIp;
        (await getIt<ILocalDbRepository>().getHubEntityLastKnownIp()).fold(
          (l) => throw 'Error getting Hub network IP',
          (r) => hubNetworkIp = r,
        );
        hubEntity = HubDtos(
          hubNetworkBssid: hubNetworkBssid!,
          lastKnownIp: hubNetworkIp!,
          networkName: hubNetworkName!,
        ).toDomain();
      } catch (e) {
        logger.e('Crashed while setting Hub info from local db: $e');
      }
    }

    ConnectivityResult? connectivityResult;
    try {
      connectivityResult = await Connectivity().checkConnectivity();
    } catch (e) {
      logger.w('Cant check connectivity this is probably PC, error: $e');
    }

    // Last Number of bssid can change fix?, need to check if more numbers
    // can do that
    final String? savedWifiBssid = hubEntity?.hubNetworkBssid.getOrCrash();
    final String? savedWifiBssidWithoutLastNumber =
        savedWifiBssid?.substring(0, savedWifiBssid.lastIndexOf(':'));

    final String? wifiBSSID = await NetworkInfo().getWifiBSSID();
    final String? wifiBSSIDWithoutLastNumber =
        wifiBSSID?.substring(0, wifiBSSID.lastIndexOf(':'));

    // Check if you are connected to the home local network for direct
    // communication with the Hub.
    // This block can be false also if user does not improve some permissions
    // or #256 if the app run on the computer and connected with ethernet cable
    // (not effecting connection with WiFi)
    if (connectivityResult != null &&
        connectivityResult == ConnectivityResult.wifi &&
        savedWifiBssidWithoutLastNumber != null &&
        wifiBSSIDWithoutLastNumber != null &&
        savedWifiBssidWithoutLastNumber == wifiBSSIDWithoutLastNumber) {
      logger.i('Connect using direct connection to Hub');

      if (hubEntity?.lastKnownIp.getOrCrash() != null) {
        Socket? testHubConnection;
        try {
          testHubConnection = await Socket.connect(
            hubEntity!.lastKnownIp.getOrCrash(),
            hubPort,
            timeout: const Duration(milliseconds: 500),
          );
          testHubConnection.destroy();
        } catch (e) {
          testHubConnection?.destroy();

          await searchForHub();
        }
      } else {
        await searchForHub();
      }

      try {
        final CompHubInfo? compHubInfo = await HubClient.getHubCompInfo(
          hubEntity!.lastKnownIp.getOrCrash(),
          hubPort,
          appInfoForHub,
        );

        if (compHubInfo == null) {
          return left(const HubFailures.unexpected());
        }
        return right(compHubInfo);
      } catch (e) {
        logger.e('Error getting hubInfo\n$e');
        return left(const HubFailures.unexpected());
      }

      // return;
    } else {
      logger.i('Connect using Remote Pipes');
      return (await getIt<ILocalDbRepository>().getRemotePipesDnsName()).fold(
          (l) {
        logger.e('Cant find local Remote Pipes Dns name');
        return left(const HubFailures.unexpected());
      }, (r) async {
        try {
          final CompHubInfo? compHubInfo =
              await HubClient.getHubCompInfo(r, 50056, appInfoForHub);

          if (compHubInfo == null) {
            return left(const HubFailures.unexpected());
          }
          return right(compHubInfo);
        } catch (e) {
          logger.e('Error getting hubInfo\n$e');
          return left(const HubFailures.unexpected());
        }
      });
      // Here for easy find and local testing
      // HubClient.createStreamWithHub('127.0.0.1', 50056);
    }

    return left(const HubFailures.unexpected());
  }

  @override
  Future<void> closeConnection() {
    // TODO: implement closeConnection
    throw UnimplementedError();
  }

  /// Search device IP by computer Avahi (mdns) name
  Future<String> getDeviceIpByDeviceAvahiName(String mDnsName) async {
    String deviceIp = '';
    final String fullMdnsName = '$mDnsName.local';

    final MDnsClient client = MDnsClient(
      rawDatagramSocketFactory: (
        dynamic host,
        int port, {
        bool? reuseAddress,
        bool? reusePort,
        int? ttl,
      }) {
        return RawDatagramSocket.bind(host, port, ttl: ttl!);
      },
    );

    // Start the client with default options.
    await client.start();
    await for (final IPAddressResourceRecord record
        in client.lookup<IPAddressResourceRecord>(
      ResourceRecordQuery.addressIPv4(mDnsName),
    )) {
      deviceIp = record.address.address;
      logger.i('Found address (${record.address}).');
    }

    // await for (final IPAddressResourceRecord record
    //     in client.lookup<IPAddressResourceRecord>(
    //         ResourceRecordQuery.addressIPv6(fullMdnsName))) {
    //   print('Found address (${record.address}).');
    // }

    client.stop();

    print('Done.');

    return deviceIp;
  }

  @override
  Future<Either<HubFailures, Unit>> searchForHub() async {
    try {
      final Either<HubFailures, Unit> locationRequest =
          await askLocationPermissionAndLocationOn();

      if (locationRequest.isLeft()) {
        return locationRequest;
      }

      logger.i('searchForHub');
      final String? wifiIP = await NetworkInfo().getWifiIP();

      final String subnet = wifiIP!.substring(0, wifiIP.lastIndexOf('.'));

      logger.i('subnet IP $subnet');

      final Stream<NetworkAddress> stream =
          NetworkAnalyzer.discover2(subnet, hubPort);

      await for (final NetworkAddress address in stream) {
        if (address.exists) {
          logger.i('Found device: ${address.ip}');

          final String? wifiBSSID = await NetworkInfo().getWifiBSSID();
          final String? wifiName = await NetworkInfo().getWifiName();

          if (wifiBSSID != null && wifiName != null) {
            hubEntity = HubEntity(
              hubNetworkBssid: HubNetworkBssid(wifiBSSID),
              networkName: HubNetworkName(wifiName),
              lastKnownIp: HubNetworkIp(address.ip),
            );

            final HubDtos hubDtos = hubEntity!.toInfrastructure();

            (await getIt<ILocalDbRepository>().saveHubEntity(
              hubNetworkBssid: hubDtos.hubNetworkBssid,
              networkName: hubDtos.networkName,
              lastKnownIp: hubDtos.lastKnownIp,
            ))
                .fold(
              (l) => logger.e('Cant find local Remote Pipes Dns name'),
              (r) => logger.i('Found CyBear Jinni Hub'),
            );
            return right(unit);
          }
        }
      }
    } catch (e) {
      logger.w('Exception searchForHub $e');
    }
    return left(const HubFailures.cantFindHubInNetwork());
  }

  @override
  Future<void> saveHubIP(String hubIP) async {
    print('saveHubIP');
  }

  Future<Either<HubFailures, Unit>> askLocationPermissionAndLocationOn() async {
    final Location location = Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    int permissionCounter = 0;

    if (kIsWeb) {
      return left(const HubFailures.automaticHubSearchNotSupportedOnWeb());
    }
    if (!Platform.isLinux && !Platform.isWindows) {
      while (true) {
        _permissionGranted = await location.hasPermission();
        if (_permissionGranted == PermissionStatus.denied) {
          _permissionGranted = await location.requestPermission();
          if (_permissionGranted != PermissionStatus.granted) {
            print('Permission to use location is denied');
            permissionCounter++;
            if (permissionCounter > 5) {
              permission_handler.openAppSettings();
            }
            continue;
          }
        }

        _serviceEnabled = await location.serviceEnabled();
        if (!_serviceEnabled) {
          _serviceEnabled = await location.requestService();
          if (!_serviceEnabled) {
            print('Location is disabled');
            continue;
          }
        }
        break;
      }
    }
    return right(unit);
  }
}
