import 'dart:async';

import 'package:grpc/grpc.dart';

import 'SmartConnection.pb.dart';
import 'SmartConnection.pbgrpc.dart';

class SmartServer extends SmartServerServiceBase{


  Future startListen() async {
    final server = Server([SmartServer()]);
    await server.serve(port: 50051);
    print('Server listening on port ${server.port}...');
  }

  @override
  Future<SmartDeviceStatus> getStatus(ServiceCall call, SmartDevice request) async {
    print('Getting status of device ' + request.toString());
    return SmartDeviceStatus()..onOffState = true;
  }
}