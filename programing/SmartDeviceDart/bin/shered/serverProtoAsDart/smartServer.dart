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
  Future<HelloReply> sayHello(ServiceCall call, HelloRequest request) async{
    print('wo hello');
    return HelloReply()..message = 'Hello, ${request.name}!';
  }

  @override
  Future<HelloReply> sayHelloAgain(ServiceCall call, HelloRequest request) async{
    print('By By hello');
    return HelloReply()..message = 'Hello again, ${request.name}!';
  }

}