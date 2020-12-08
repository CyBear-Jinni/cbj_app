import 'package:grpc/grpc.dart';
import 'package:grpc/src/server/call.dart';
import 'protoc_as_dart/cbj_app_connections.pb.dart';
import 'protoc_as_dart/cbj_app_connections.pbgrpc.dart';


/// The implantation of the CyBear Jinni App Server from grpc
class CBJAppServerD extends CyBearJinniAppServiceBase{
  @override
  Future<CBJCommendStatus> cBJAppGetSmartDeviceInformation(ServiceCall call, SmartDeviceInfo request) {
    String smartDeviceIp = request.smartDeviceIP;
    print('Smart device IP is $smartDeviceIp');
    // TODO: Get the devices and type of this ip from Smart Device
    // TODO: And than send it to the list in the add new Smart Devices
    return Future<CBJCommendStatus>.value(CBJCommendStatus()..success = true);
  }
}

/// Helper class to control the Server
class CreateTheCBJAppServer {

  ///  This function will create the server
  Future<void> createServer() async {
    final Server server = Server(<CBJAppServerD>[CBJAppServerD()]);
    await server.serve(port: 30055);
    print('Server listening on port ${server.port}...');
  }
}