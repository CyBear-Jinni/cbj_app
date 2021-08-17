import 'dart:io';

import 'package:cybear_jinni/domain/hub/hub_entity.dart';
import 'package:cybear_jinni/domain/hub/hub_failures.dart';
import 'package:cybear_jinni/domain/hub/hub_value_objects.dart';
import 'package:cybear_jinni/domain/hub/i_hub_connection_repository.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/hub_client.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:multicast_dns/multicast_dns.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;
import 'package:ping_discover_network_forked/ping_discover_network_forked.dart';

@LazySingleton(as: IHubConnectionRepository)
class HubConnectionRepository extends IHubConnectionRepository {
  static HubEntity? hubEntity;

  Future<void> connectWithHub() async {
    if (hubEntity?.lastKnownIp?.getOrCrash() == null) {
      await searchForHub();
    }

    await HubClient.createStreamWithHub(hubEntity!.lastKnownIp!.getOrCrash());
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

    final MDnsClient client = MDnsClient(rawDatagramSocketFactory:
        (dynamic host, int port,
        {bool? reuseAddress, bool? reusePort, int? ttl}) {
      return RawDatagramSocket.bind(host, port, ttl: ttl!);
    });

    // Start the client with default options.
    await client.start();
    await for (final IPAddressResourceRecord record
    in client.lookup<IPAddressResourceRecord>(
        ResourceRecordQuery.addressIPv4(mDnsName))) {
      deviceIp = record.address.address;
      print('Found address (${record.address}).');
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
    Location location = Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    int permissionCounter = 0;
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

    print('searchForHub');
    final String? wifiIP = await NetworkInfo().getWifiIP();

    final String subnet = wifiIP!.substring(0, wifiIP.lastIndexOf('.'));
    const int port = 50055;

    final Stream<NetworkAddress> stream =
        NetworkAnalyzer.discover2(subnet, port);

    await for (NetworkAddress addr in stream) {
      if (addr.exists) {
        print('Found device: ${addr.ip}');

        final String? wifiBSSID = await NetworkInfo().getWifiBSSID();
        final String? wifiName = await NetworkInfo().getWifiName();

        if (wifiBSSID != null && wifiName != null) {
          hubEntity = HubEntity(
              hubNetworkBssid: HubNetworkBssid(wifiBSSID),
              networkName: HubNetworkName(wifiName),
              lastKnownIp: HubNetworkIp(addr.ip.toString()));
          return right(unit);
        }
      }
    }
    return left(const HubFailures.cantFindHubInNetwork());
  }

  @override
  Future<void> saveHubIP(String hubIP) async {
    print('saveHubIP');
  }
}
