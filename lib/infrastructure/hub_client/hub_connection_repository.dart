import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:cybear_jinni/domain/hub/hub_entity.dart';
import 'package:cybear_jinni/domain/hub/hub_failures.dart';
import 'package:cybear_jinni/domain/hub/hub_value_objects.dart';
import 'package:cybear_jinni/domain/hub/i_hub_connection_repository.dart';
import 'package:cybear_jinni/domain/local_db/i_local_db_repository.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:cybear_jinni/infrastructure/hub_client/hub_client.dart';
import 'package:cybear_jinni/infrastructure/hub_client/hub_dtos.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:multicast_dns/multicast_dns.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:network_tools/network_tools.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;
import 'package:wifi_iot/wifi_iot.dart';

@LazySingleton(as: IHubConnectionRepository)
class HubConnectionRepository extends IHubConnectionRepository {
  HubConnectionRepository() {
    if (currentEnv == Env.prod) {
      hubPort = 50055;
    } else {
      hubPort = 60055;
    }
  }

  /// Port to connect to the cbj hub, will change according to the current
  /// running environment
  late int hubPort;

  static int tryAgainConnectToTheHubOnceMore = 0;

  @override
  Future<void> connectWithHub() async {
    if (IHubConnectionRepository.hubEntity == null) {
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
        IHubConnectionRepository.hubEntity = HubDtos(
          hubNetworkBssid: hubNetworkBssid!,
          lastKnownIp: hubNetworkIp!,
          networkName: hubNetworkName!,
        ).toDomain();
      } catch (e) {
        logger.e('Crashed while setting Hub info from local db\n$e');
      }
    }

    ConnectivityResult? connectivityResult;
    try {
      connectivityResult = await Connectivity().checkConnectivity();
    } catch (e) {
      logger.w('Cant check connectivity this is probably PC, error\n$e');
    }

    // Last Number of bssid can change fix?, need to check if more numbers
    // can do that
    final String? savedWifiBssid =
        IHubConnectionRepository.hubEntity?.hubNetworkBssid.getOrCrash();
    final String? savedWifiBssidWithoutLastNumber =
        savedWifiBssid?.substring(0, savedWifiBssid.lastIndexOf(':'));
    String? wifiBSSID;
    String? wifiBSSIDWithoutLastNumber;
    try {
      wifiBSSID = await NetworkInfo().getWifiBSSID();
      wifiBSSIDWithoutLastNumber =
          wifiBSSID?.substring(0, wifiBSSID.lastIndexOf(':'));
    } catch (e) {
      logger.w("Can't get WiFi BSSID");
    }
    // Check if you are connected to the home local network for direct
    // communication with the Hub.
    // This block can be false also if user does not improve some permissions
    // or #256 if the app run on the computer and connected with ethernet cable
    // (not effecting connection with WiFi)
    if ((connectivityResult != null &&
            connectivityResult == ConnectivityResult.wifi &&
            savedWifiBssidWithoutLastNumber != null &&
            wifiBSSIDWithoutLastNumber != null &&
            savedWifiBssidWithoutLastNumber == wifiBSSIDWithoutLastNumber) ||
        (connectivityResult != null &&
            connectivityResult == ConnectivityResult.ethernet &&
            savedWifiBssidWithoutLastNumber == 'no:Network:Bssid') ||
        (kIsWeb && savedWifiBssidWithoutLastNumber == 'no:Network:Bssid')) {
      logger.i('Connect using direct connection to Hub');

      if (IHubConnectionRepository.hubEntity?.lastKnownIp.getOrCrash() !=
          null) {
        Socket? testHubConnection;
        try {
          testHubConnection = await Socket.connect(
            IHubConnectionRepository.hubEntity!.lastKnownIp.getOrCrash(),
            hubPort,
            timeout: const Duration(milliseconds: 500),
          );
          await testHubConnection.close();
          testHubConnection.destroy();
          testHubConnection = null;
        } catch (e) {
          await testHubConnection?.close();
          testHubConnection?.destroy();

          await searchForHub();
          logger.i("Connection to hub didn't work, will try again Error:\n$e");
          connectWithHub();
          return;
        }
      } else {
        await searchForHub();
      }
      tryAgainConnectToTheHubOnceMore = 0;
      await HubClient.createStreamWithHub(
        IHubConnectionRepository.hubEntity!.lastKnownIp.getOrCrash(),
        hubPort,
      );

      return;
    } else {
      logger.i('Connect using Remote Pipes');
      (await getIt<ILocalDbRepository>().getRemotePipesDnsName()).fold(
        (l) async {
          logger.e(
            'Cant find local Remote Pipes Dns name, will ask the user to open WiFi and gps to try local connection',
          );

          final bool wifiEnabled = await WiFiForIoTPlugin.isEnabled();
          final Location location = Location();

          if (wifiEnabled && await location.serviceEnabled()) {
            final bool wifiEnabled = await WiFiForIoTPlugin.isConnected();
            if (wifiEnabled) {
              if (tryAgainConnectToTheHubOnceMore <= 10) {
                // Even if WiFi got enabled it still takes time for the
                // device to complete the automatic connection to previous
                // WiFi network, so we give it a little time before stop trying
                tryAgainConnectToTheHubOnceMore += 1;
                await Future.delayed(const Duration(seconds: 5));
                connectWithHub();
              } else {
                logger.w(
                  "User cannot connect to home as he is A. Not in his home B. Didn't set Remote Pipes",
                );
              }
            } else {
              logger.v('User not connected to any WiFi, Will try again.');
              tryAgainConnectToTheHubOnceMore = 0;
              await Future.delayed(const Duration(milliseconds: 500));
              connectWithHub();
              return;
            }
          } else {
            final bool wifiEnabled = await WiFiForIoTPlugin.isEnabled();
            if (!wifiEnabled) {
              WiFiForIoTPlugin.setEnabled(true, shouldOpenSettings: true);
              tryAgainConnectToTheHubOnceMore = 0;
              await Future.delayed(const Duration(milliseconds: 500));
              connectWithHub();
              return;
            }

            (await askLocationPermissionAndLocationOn()).fold((l) {
              logger.e(
                'User does not allow opening location and does not have remote pipes info',
              );
            }, (r) {
              // Try to connect again because there is a chance user without
              // remote pipes info but is in his home
              connectWithHub();
            });
          }
        },
        (r) {
          HubClient.createStreamWithHub(r, 50056);
          tryAgainConnectToTheHubOnceMore = 0;
        },
      );
      // Here for easy find and local testing
      // HubClient.createStreamWithHub('127.0.0.1', 50056);
    }
  }

  @override
  Future<Either<HubFailures, CompHubInfo>> getHubCompInfo(
    CompHubInfo appInfoForHub,
  ) async {
    if (IHubConnectionRepository.hubEntity == null) {
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
        IHubConnectionRepository.hubEntity = HubDtos(
          hubNetworkBssid: hubNetworkBssid!,
          lastKnownIp: hubNetworkIp!,
          networkName: hubNetworkName!,
        ).toDomain();
      } catch (e) {
        logger.e('Crashed while setting Hub info from local db\n$e');
      }
    }

    ConnectivityResult? connectivityResult;
    try {
      connectivityResult = await Connectivity().checkConnectivity();
    } catch (e) {
      logger.w('Cant check connectivity this is probably PC, error\n$e');
    }

    // Last Number of bssid can change fix?, need to check if more numbers
    // can do that
    final String? savedWifiBssid =
        IHubConnectionRepository.hubEntity?.hubNetworkBssid.getOrCrash();
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

      if (IHubConnectionRepository.hubEntity?.lastKnownIp.getOrCrash() !=
          null) {
        Socket? testHubConnection;
        try {
          testHubConnection = await Socket.connect(
            IHubConnectionRepository.hubEntity!.lastKnownIp.getOrCrash(),
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
          IHubConnectionRepository.hubEntity!.lastKnownIp.getOrCrash(),
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
  }

  @override
  Future<void> closeConnection() {
    // TODO: implement closeConnection
    throw UnimplementedError();
  }

  /// Search device IP by computer Avahi (mdns) name
  Future<String> getDeviceIpByDeviceAvahiName(String mDnsName) async {
    String deviceIp = '';
    // final String fullMdnsName = '$mDnsName.local';

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
    //   logger.v('Found address (${record.address}).');
    // }

    client.stop();

    logger.v('Done.');

    return deviceIp;
  }

  @override
  Future<Either<HubFailures, Unit>> searchForHub({
    String? deviceIpOnTheNetwork,
    bool? isThatTheIpOfTheHub,
  }) async {
    try {
      final Either<HubFailures, Unit> locationRequest =
          await askLocationPermissionAndLocationOn();

      if (locationRequest.isLeft()) {
        return locationRequest;
      }

      logger.i('searchForHub');

      String? currentDeviceIP;
      String? networkBSSID;
      String? networkName;
      if (await Connectivity().checkConnectivity() == ConnectivityResult.wifi &&
          !kIsWeb) {
        currentDeviceIP = await NetworkInfo().getWifiIP();
        networkBSSID = await NetworkInfo().getWifiBSSID();
        networkName = await NetworkInfo().getWifiName();
      } else {
        if (deviceIpOnTheNetwork == null) {
          // Issue https://github.com/CyBear-Jinni/cbj_app/issues/256
          return left(
            const HubFailures
                .findingHubWhenConnectedToEthernetCableIsNotSupported(),
          );
        }

        currentDeviceIP = deviceIpOnTheNetwork;
        networkBSSID = 'no:Network:Bssid:Found';
        networkName = 'noNetworkNameFound';
        if (isThatTheIpOfTheHub != null && isThatTheIpOfTheHub) {
          return insertHubInfo(
            networkIp: currentDeviceIP,
            networkBSSID: networkBSSID,
            networkName: networkName,
          );
        }
      }

      final String subnet =
          currentDeviceIP!.substring(0, currentDeviceIP.lastIndexOf('.'));

      logger.i('Subnet IP $subnet');

      final Stream<ActiveHost> devicesWithPort = HostScanner.discoverPort(
        subnet,
        hubPort,

        /// TODO: return this settings when can use with the await for loop
        // resultsInIpAscendingOrder: false,
        timeout: const Duration(milliseconds: 600),
      );

      logger.i('Test Next line not arriving');

      await for (final ActiveHost activeHost in devicesWithPort) {
        logger.i('Found device: ${activeHost.ip}');
        if (networkBSSID != null && networkName != null) {
          return insertHubInfo(
            networkIp: activeHost.ip,
            networkBSSID: networkBSSID,
            networkName: networkName,
          );
        }
      }
    } catch (e) {
      logger.w('Exception searchForHub\n$e');
    }
    await Future.delayed(const Duration(seconds: 5));
    return left(const HubFailures.cantFindHubInNetwork());
  }

  @override
  Future<void> saveHubIP(String hubIP) async {
    logger.w('saveHubIP');
  }

  Future<Either<HubFailures, Unit>> askLocationPermissionAndLocationOn() async {
    final Location location = Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    int permissionCounter = 0;

    // Get location permission is not supported on Linux
    if (Platform.isLinux) {
      return right(unit);
    }

    while (true) {
      _permissionGranted = await location.hasPermission();
      if (_permissionGranted == PermissionStatus.denied) {
        _permissionGranted = await location.requestPermission();
        if (_permissionGranted != PermissionStatus.granted) {
          logger.e('Permission to use location is denied');
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
          logger.w('Location is disabled');
          continue;
        }
      }
      break;
    }
    return right(unit);
  }

  /// Will save hub info both on ram and to the local database
  Future<Either<HubFailures, Unit>> insertHubInfo({
    required String networkIp,
    required String networkName,
    required String networkBSSID,
  }) async {
    IHubConnectionRepository.hubEntity = HubEntity(
      hubNetworkBssid: HubNetworkBssid(networkBSSID),
      networkName: HubNetworkName(networkName),
      lastKnownIp: HubNetworkIp(networkIp),
    );

    final HubDtos hubDtos =
        IHubConnectionRepository.hubEntity!.toInfrastructure();

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
