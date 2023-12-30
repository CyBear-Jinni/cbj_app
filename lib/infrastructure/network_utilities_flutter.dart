import 'dart:async';

import 'package:bonsoir/bonsoir.dart';
import 'package:cbj_integrations_controller/domain/i_network_utilities.dart';
import 'package:network_tools_flutter/network_tools_flutter.dart'
    as network_flutter;

class NetworkUtilitiesFlutter extends NetworkUtilities {
  @override
  Stream<network_flutter.ActiveHost> getAllPingableDevicesAsyncImplementaion(
    String subnet, {
    int? firstHostId,
    int? lastHostId,
  }) =>
      network_flutter.HostScannerFlutter.getAllPingableDevices(
        subnet,
        firstHostId: 127,
      );

  @override
  Future<network_flutter.ActiveHost?> connectToPortImplementation({
    required String address,
    required int port,
    required Duration timeout,
  }) =>
      network_flutter.PortScannerFlutter.connectToPort(
        address: address,
        port: port,
        timeout: timeout,
        activeHostsController: StreamController<network_flutter.ActiveHost>(),
      );

      mdnsSearch(){

        tcpSrvRecordsList;
          final discovery = BonsoirDiscovery(type: _domain);
    await discovery.ready;
      }
}
