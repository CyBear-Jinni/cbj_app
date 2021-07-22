import 'dart:async';

import 'package:cybear_jinni/infrastructure/core/gen/cbj_app_server/protoc_as_dart/cbj_app_connections.pb.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_app_server/protoc_as_dart/cbj_app_connections.pbgrpc.dart';
import 'package:grpc/grpc.dart';

/// The implantation of the CyBear Jinni App Server from grpc
class CBJAppServerD extends CyBearJinniAppServiceBase {
  CBJAppServerD(this.cbjCommendStatus);

  StreamController<CompInfoSB> cbjCommendStatus;

  @override
  Future<CBJCommendStatus> cBJAppGetSmartDeviceInformation(
      ServiceCall call, CompInfoSB request) {
    cbjCommendStatus.add(request);

    return Future<CBJCommendStatus>.value(CBJCommendStatus()..success = true);
  }

//   Future<void> cBJAppGetSmartDeviceInformationAsync(
//       SmartDeviceInfo smartDevice) async {
//     final String smartDeviceIp = smartDevice.smartDeviceIP;
//
//     AddNewCBJDevices.newDevicesStringList.add(smartDeviceIp);
//     print('Smart device IP is $smartDeviceIp');
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
    print('Server listening on port ${server!.port}...');
  }

  static Future<void> shoutDownServer() async {
    await server?.shutdown();
    return;
  }
}
