
import 'dart:io';
import 'dart:async';



class NetworkManager {


//
//  lisenNow() async {
//    var server = await HttpServer.bind(InternetAddress.anyIPv4, 4141);
//    print("Serving at ${server.address}:${server.port}");
//
//    await for (var request in server) {
//      print(request.toString());
//      request.response
//        ..headers.contentType = new ContentType("text", "plain", charset: "utf-8")
//        ..write('Hello, world')
//        ..close();
//    }
//  }


  Future PortListening() async {
//    String ip = await printIps();
//    print('Ip is');
//    print(ip);

    await runZoned(() async {
      HttpServer server = await HttpServer.bind(InternetAddress.anyIPv4, 4141);
      await for (HttpRequest req in server) {
        print('req' + req.uri.pathSegments.toString());
        req.response
        ..headers.contentType = new ContentType("text", "plain", charset: "utf-8")
        ..write('Hello, world');
        await req.response.close();
//        return req.uri.pathSegments.toString();
      };
    });
  }




  handleMsg(msg) {
    print('Message received: $msg');
  }

  Future<String> printIps() async {
    for (var interface in await NetworkInterface.list()) {
      print('== Interface: ${interface.name} ==');
      for (var addr in interface.addresses) {
//        print(
//            '${addr.address} ${addr.host} ${addr.isLoopback} ${addr.rawAddress} ${addr.type.name}');
        return addr.address;
      }
    }
    return null;
  }
}



