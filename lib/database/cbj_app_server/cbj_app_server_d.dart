import 'package:cybear_jinni/features/add_new_devices/add_new_cbj_devices.dart';
import 'package:cybear_jinni/objects/smart_device/send_to_smart_device.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/src/server/call.dart';
import 'protoc_as_dart/cbj_app_connections.pb.dart';
import 'protoc_as_dart/cbj_app_connections.pbgrpc.dart';


/// The implantation of the CyBear Jinni App Server from grpc
class CBJAppServerD extends CyBearJinniAppServiceBase{
  @override
  Future<CBJCommendStatus> cBJAppGetSmartDeviceInformation(ServiceCall call, SmartDeviceInfo request) {

    cBJAppGetSmartDeviceInformationAsync(request.smartDeviceIP);

    return Future<CBJCommendStatus>.value(CBJCommendStatus()..success = true);
  }

  Future<void> cBJAppGetSmartDeviceInformationAsync(String smartDeviceIp) async{
    AddNewCBJDevices.newDevicesStringList.add(smartDeviceIp);
    print('Smart device IP is $smartDeviceIp');

    AddNewCBJDevices.newDevicesList.addAll(await getAllDevices(smartDeviceIp));
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


