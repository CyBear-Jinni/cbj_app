import 'dart:async';
import 'dart:io';

class NetworkManager {
  // Listening for connection on specified port and returning HttpRequest when connection was establish
  static Future<HttpRequest> PortListening() async {
    HttpServer server = await HttpServer.bind(InternetAddress.anyIPv6, 4141);
    print("Meybe listening at http://${await printIps()}:${server.port}");
    await for (HttpRequest req in await server) {
      return req;
    }
    ;

    return null;
  }

  // Getting HttpRequest and a string and send back the string the the connected device
  static void SendResponse(HttpRequest req, String response) async {
    req.response
      ..headers.contentType = new ContentType("text", "plain", charset: "utf-8")
      ..write(response);
    await req.response.close();
  }
}

// Get Ip info
Future<String> printIps() async {
  for (NetworkInterface interface in await NetworkInterface.list()) {
//      print('== Interface: ${interface.name} ==');
    for (InternetAddress addr in interface.addresses) {
//        print(
//            '${addr.address} ${addr.host} ${addr.isLoopback} ${addr.rawAddress} ${addr.type.name}');
      return addr.address;
    }
  }
  return null;
}
