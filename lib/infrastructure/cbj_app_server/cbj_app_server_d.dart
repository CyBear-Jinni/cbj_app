import 'dart:async';

import 'package:cbj_integrations_controller/infrastructure/gen/cbj_app_server/protoc_as_dart/cbj_app_connections.pbgrpc.dart';
import 'package:cybear_jinni/utils.dart';
import 'package:grpc/grpc.dart';

/// The implantation of the CyBear Jinni App Server from grpc
class CBJAppServerD extends CyBearJinniAppServiceBase {
  CBJAppServerD(this.cbjCommendStatus);

  StreamController<CompInfoSB> cbjCommendStatus;

  @override
  Future<CBJCommendStatus> cBJAppGetSmartDeviceInformation(
    ServiceCall call,
    CompInfoSB request,
  ) {
    cbjCommendStatus.add(request);

    return Future<CBJCommendStatus>.value(CBJCommendStatus()..success = true);
  }

  @override
  Future<CompAppInfo> getCompAppInfo(ServiceCall call, CompAppInfo request) {
    return Future<CompAppInfo>.value(CompAppInfo());
  }

//   Future<void> cBJAppGetSmartDeviceInformationAsync(
//       SmartDeviceInfo smartDevice) async {
//     final String smartDeviceIp = smartDevice.smartDeviceIP;
//
//     AddNewCBJDevices.newDevicesStringList.add(smartDeviceIp);
//     logger.t('Smart device IP is $smartDeviceIp');
//
//
//     if (!AddNewCBJDevices.newDevicesList
//         .any((SmartDeviceObject element) => element.ip == smartDeviceIp))
//       AddNewCBJDevices.newDevicesList
//           .addAll(await getAllDevices(smartDeviceIp));
//   }
}

/// Helper class to control the Server
class CreateTheCBJAppServer {
  static Server? server;

  ///  This function will create the server
  Future<void> createServer(StreamController<CompInfoSB> compInfoStream) async {
    await server?.shutdown();
    server = Server(<CBJAppServerD>[CBJAppServerD(compInfoStream)]);
    await server!.serve(port: 30055);
    logger.i('App server listening on port ${server!.port}...');
  }

  static Future<void> shutdownServer() async {
    await server?.shutdown();
    return;
  }
}
