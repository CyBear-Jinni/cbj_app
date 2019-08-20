import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'client_proto_as_dart/smart_client.dart';

String connect(String ip) {
  HttpClient()
      .getUrl(
          Uri.parse('http://' + ip + ':4141/abc')) // produces a request object
      .then((request) => request.close()) // sends the request
      .then((HttpClientResponse response) {
    print(response.transform(Utf8Decoder()).listen(print));

    print('The return is: ' + response.toString());
    return response.toString();
  }); // transforms and prints the response
  return 'Cannt connect to device';
}

// Get

// Request device state, on or off
Future<String> getDeviceStateRequest(String ip) async {
  return await SmartClient.getSmartDeviceStatus(ip);
}

Future<String> turnOn(String ip) async{
  String deviceSuccessStatus = await SmartClient.setSmartDeviceOn(ip);
  print('The return is: ' + deviceSuccessStatus.toString());
  return deviceSuccessStatus;
}

Future<String> turnOff(String ip) async {
  String deviceSuccessStatus = await SmartClient.setSmartDeviceOff(ip);
  print('The return is: ' + deviceSuccessStatus.toString());
  return deviceSuccessStatus;
}