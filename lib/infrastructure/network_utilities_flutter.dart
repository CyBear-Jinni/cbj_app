import 'dart:async';

import 'package:cbj_integrations_controller/integrations_controller.dart';
import 'package:network_tools_flutter/network_tools_flutter.dart'
    as network_flutter;
import 'package:network_tools_flutter/network_tools_flutter.dart';

class NetworkUtilitiesFlutter extends NetworkUtilities {
  @override
  Stream<network_flutter.ActiveHost> getAllPingableDevicesAsyncImplementaion(
    String subnet, {
    int? firstHostId,
    int? lastHostId,
  }) =>
      network_flutter.HostScannerFlutter.getAllPingableDevices(
        subnet,
        firstHostId: firstHostId ?? HostScanner.defaultFirstHostId,
        lastHostId: lastHostId ?? HostScanner.defaultLastHostId,
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

  // TODO: Add support for mdns using for ios
  //   mdnsSearch(){

  //     tcpSrvRecordsList;
  //       final discovery = BonsoirDiscovery(type: _domain);
  // await discovery.ready;
  //   }
}
