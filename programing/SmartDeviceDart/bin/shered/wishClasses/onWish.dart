// Class to change wish on status to device
import 'dart:convert';
import 'dart:io';

import '../deviceInformation.dart';

class OnWish {
  static String SetOn(DeviceInformation deviceInformation) {
    switch (deviceInformation.runtimeType) {
      case RemoteDevice:
        return SetOnRemote(deviceInformation);
      case LocalDevice:
        return SetOnLocal(deviceInformation);
    }
    return 'DeviceBase type not supported';
  }

  // Turn this device on
  static String SetOnLocal(LocalDevice deviceInformation) {
    return 'Response from this device on sucsessful';
  }

  // Turn remote device on
  static String SetOnRemote(RemoteDevice remoteDevice) {
    try {
      HttpClient()
          .getUrl(Uri.parse('http://' +
              remoteDevice.getIp() +
              '/LED=ON')) // produces a request object
          .then((request) => request.close()) // sends the request
          .then((HttpClientResponse response) {
        print(response.transform(Utf8Decoder()).listen(print));
      });
    } catch (e) {
      print('Exeption: ' + e);
    }
    return 'Response from remote device on sucsessful';
  }
}
