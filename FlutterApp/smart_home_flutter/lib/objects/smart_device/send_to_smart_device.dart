import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:smart_home_flutter/objects/smart_device/client/smart_client.dart';
import 'package:smart_home_flutter/objects/smart_device/smart_device_objcet.dart';


String connect(SmartDeviceObject smartDeviceObject) {
  HttpClient()
      .getUrl(
      Uri.parse('http://' + smartDeviceObject.ip + ':4141/' +
          smartDeviceObject.name)) //  Produces a request object
      .then((request) => request.close()) //  Sends the request
      .then((HttpClientResponse response) {
    print(response.transform(Utf8Decoder()).listen(print));

    print('The return is: ' + response.toString());
    return response.toString();
  }); //  Transforms and prints the response
  return 'Cannt connect to device';
}


//  Get

//  Request device state, on or off
Future<String> getDeviceStateRequest(
    SmartDeviceObject smartDeviceObject) async {
  return await SmartClient.getSmartDeviceStatus(smartDeviceObject);
}


Future<String> turnOn(SmartDeviceObject smartDeviceObject) async {
  String deviceSuccessStatus = await SmartClient.setSmartDeviceOn(
      smartDeviceObject);
  print('The return is: ' + deviceSuccessStatus.toString());
  return deviceSuccessStatus;
}


Future<String> turnOff(SmartDeviceObject smartDeviceObject) async {
  String deviceSuccessStatus = await SmartClient.setSmartDeviceOff(
      smartDeviceObject);
  print('The return is: ' + deviceSuccessStatus.toString());
  return deviceSuccessStatus;
}
