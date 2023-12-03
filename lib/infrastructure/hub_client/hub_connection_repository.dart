part of 'package:cybear_jinni/domain/hub/i_hub_connection_repository.dart';

class _HubConnectionRepository implements IHubConnectionRepository {
  _HubConnectionRepository() {
    if (currentEnvApp == EnvApp.prod) {
      hubPort = 50055;
    } else {
      hubPort = 60055;
    }
  }

  /// Port to connect to the cbj hub, will change according to the current
  /// running environment
  late int hubPort;

  int tryAgainConnectToTheHubOnceMore = 0;

  bool cancelConnectionWithHub = false;

  bool appInDemoMod = false;

  @override
  Future<void> connectWithHub({bool demoMod = false}) async {
    if (cancelConnectionWithHub && !demoMod) {
      return;
    }
    appInDemoMod = demoMod;

    if (appInDemoMod) {
      cancelConnectionWithHub = true;
      return streamFromDemoMode();
    }

    /// Load network information from local db
    if (IHubConnectionRepository.hubEntity == null) {
      await loadNetworkInformationFromDb();
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
    final Either<LocalDbFailures, String> remotePipesInformation =
        await ILocalDbRepository.instance.getRemotePipesDnsName();

    // Check if you are connected to the home local network for direct
    // communication with the Hub.
    // This block can be false also if user does not approve some permissions
    // or #256 if the app run on the computer and connected with ethernet cable
    // (not effecting connection with WiFi)
    if (remotePipesInformation.isLeft() ||
        (connectivityResult != null &&
            connectivityResult == ConnectivityResult.wifi &&
            savedWifiBssidWithoutLastNumber != null &&
            wifiBSSIDWithoutLastNumber != null &&
            savedWifiBssidWithoutLastNumber == wifiBSSIDWithoutLastNumber) ||
        (connectivityResult != null &&
            connectivityResult == ConnectivityResult.ethernet &&
            savedWifiBssidWithoutLastNumber == 'no:Network:Bssid') ||
        (kIsWeb && savedWifiBssidWithoutLastNumber == 'no:Network:Bssid')) {
      (await openAndroidWifiSettingIfPossible()).fold(
        (l) {
          logger
              .w('No way to establish connection with the Hub, WiFi or location'
                  ' permission is closed for here');
          return;
        },
        (r) async {},
      );
      logger.i('Connect using direct connection to Hub');

      await connectDirectlyToHub();
      return;
    } else {
      await connectionUsingRemotePipes();
    }
  }

  @override
  Future<Either<HubFailures, CompHubInfo>> getHubCompInfo(
    CompHubInfo appInfoForHub,
  ) async {
    if (IHubConnectionRepository.hubEntity == null) {
      try {
        String? hubNetworkBssid;
        (await ILocalDbRepository2.instance.getHubEntityNetworkBssid()).fold(
          (l) => throw 'Error getting Hub network Bssid',
          (r) => hubNetworkBssid = r,
        );

        String? hubNetworkName;
        (await ILocalDbRepository2.instance.getHubEntityNetworkName()).fold(
          (l) => throw 'Error getting Hub network name',
          (r) => hubNetworkName = r,
        );

        String? hubNetworkIp;
        (await ILocalDbRepository2.instance.getHubEntityLastKnownIp()).fold(
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
      return (await ILocalDbRepository.instance.getRemotePipesDnsName()).fold(
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
  Future<void> closeConnection() async {
    cancelConnectionWithHub = true;
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
    //   logger.t('Found address (${record.address}).');
    // }

    client.stop();

    logger.t('Done.');

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
        final NetworkInfo networkInfo = NetworkInfo();
        networkName = await networkInfo.getWifiName();
        currentDeviceIP = await networkInfo.getWifiIP();
        networkBSSID = await networkInfo.getWifiBSSID();
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

      logger.i('Hub Search subnet IP $subnet');

      final Stream<ActiveHost> devicesWithPort =
          HostScanner.scanDevicesForSinglePort(
        subnet,
        hubPort,

        /// TODO: return this settings when can use with the await for loop
        // resultsInIpAscendingOrder: false,
        timeout: const Duration(milliseconds: 600),
      );

      await for (final ActiveHost activeHost in devicesWithPort) {
        logger.i('Found Cbj Hub device: ${activeHost.address}');
        if (networkBSSID != null && networkName != null) {
          return insertHubInfo(
            networkIp: activeHost.address,
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

    bool serviceEnabled;
    PermissionStatus permissionGranted;

    int permissionCounter = 0;
    int disabledCounter = 0;

    // Get location permission is not supported on Linux
    if (Platform.isLinux || Platform.isWindows) {
      return right(unit);
    }

    while (true) {
      permissionGranted = await location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        permissionGranted = await location.requestPermission();
        if (permissionGranted != PermissionStatus.granted) {
          logger.e('Permission to use location is denied');
          await Future.delayed(const Duration(seconds: 10));

          permissionCounter++;
          if (permissionCounter > 5) {
            permission_handler.openAppSettings();
          } else if (permissionCounter > 7) {
            return const Left(HubFailures.unexpected());
          }
          continue;
        }
      }

      serviceEnabled = await location.serviceEnabled();
      if (!serviceEnabled) {
        serviceEnabled = await location.requestService();
        if (!serviceEnabled) {
          disabledCounter++;
          if (disabledCounter > 2) {
            return const Left(HubFailures.unexpected());
          }
          logger.w('Location is disabled');
          await Future.delayed(const Duration(seconds: 5));
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

    (await ILocalDbRepository2.instance.saveHubEntity(
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

  Future<void> streamFromDemoMode() async {
    await HubClientDemo.createStreamWithHub();
  }

  /// Load saved Hub network information and load it to
  /// IHubConnectionRepository.hubEntity
  Future<void> loadNetworkInformationFromDb() async {
    try {
      String? hubNetworkBssid;
      (await ILocalDbRepository2.instance.getHubEntityNetworkBssid()).fold(
        (l) => throw 'Error getting Hub network Bssid',
        (r) => hubNetworkBssid = r,
      );

      String? hubNetworkName;
      (await ILocalDbRepository2.instance.getHubEntityNetworkName()).fold(
        (l) => throw 'Error getting Hub network name',
        (r) => hubNetworkName = r,
      );

      String? hubNetworkIp;
      (await ILocalDbRepository2.instance.getHubEntityLastKnownIp()).fold(
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

  /// Connect directly to the Hub if possible
  Future<void> connectDirectlyToHub() async {
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

      Either<HubFailures, Unit> foundAHub = await searchForHub();
      // If can't find hub in local network
      if (foundAHub.isLeft()) {
        // Connect using Remote pipes if connection information exists
        if ((await ILocalDbRepository.instance.getRemotePipesDnsName())
            .isRight()) {
          await connectionUsingRemotePipes();
          return;
        }
        while (true) {
          foundAHub = await searchForHub();
          if (foundAHub.isRight()) {
            break;
          }
        }
      }
    }

    tryAgainConnectToTheHubOnceMore = 0;
    await HubClient.createStreamWithHub(
      IHubConnectionRepository.hubEntity!.lastKnownIp.getOrCrash(),
      hubPort,
    );
  }

  /// Connect to the Hub using the Remote Pipes
  Future<void> connectionUsingRemotePipes() async {
    (await ILocalDbRepository.instance.getRemotePipesDnsName()).fold(
      (l) async {
        (await openAndroidWifiSettingIfPossible()).fold(
          (l) {
            logger.w(
                'No way to establish connection with the Hub, WiFi or location'
                ' permission is closed');
          },
          (r) async {
            await connectWithHub();
          },
        );
      },
      (r) {
        logger.i('Connect using Remote Pipes');
        HubClient.createStreamWithHub(r, 50056);
        tryAgainConnectToTheHubOnceMore = 0;
      },
    );
  }

  Future<Either<HubFailures, Unit>> openAndroidWifiSettingIfPossible() async {
    final bool wifiEnabled = await WiFiForIoTPlugin.isEnabled();
    final Location location = Location();

    if (wifiEnabled && await location.serviceEnabled()) {
      final bool wifiEnabled = await WiFiForIoTPlugin.isConnected();
      if (wifiEnabled) {
        return right(unit);
      }
      // while (true) {
      //   if (wifiEnabled) {
      //     if (tryAgainConnectToTheHubOnceMore <= 10) {
      //       // Even if WiFi got enabled it still takes time for the
      //       // device to complete the automatic connection to previous
      //       // WiFi network, so we give it a little time before stop trying
      //       tryAgainConnectToTheHubOnceMore += 1;
      //       await Future.delayed(const Duration(seconds: 5));
      //     } else {
      //       logger.w(
      //         "User cannot connect to home as he is A. Not in his home B. Didn't set Remote Pipes",
      //       );
      //     }
      //   } else {
      //     logger.t('User not connected to any WiFi, Will try again.');
      //     tryAgainConnectToTheHubOnceMore = 0;
      //     await Future.delayed(const Duration(milliseconds: 500));
      //
      //     return right(unit);
      //   }
      // }
    } else {
      logger.w(
        'Will ask the user to open WiFi and gps to try local connection',
      );
      final bool wifiEnabled = await WiFiForIoTPlugin.isEnabled();
      if (!wifiEnabled) {
        WiFiForIoTPlugin.setEnabled(true, shouldOpenSettings: true);
        tryAgainConnectToTheHubOnceMore = 0;
        await Future.delayed(const Duration(milliseconds: 500));
        return right(unit);
      }

      (await askLocationPermissionAndLocationOn()).fold((l) {
        logger.e(
          'User does not allow opening location and does not have remote pipes info',
        );
      }, (r) async {
        // Try to connect again because there is a chance user without
        // remote pipes info but is in his home
        return right(unit);
      });
    }
    return const Left(HubFailures.unexpected());
  }
}
