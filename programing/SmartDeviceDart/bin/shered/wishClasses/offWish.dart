import 'dart:convert';
import 'dart:io';

import '../deviceInformation.dart';

class OffWish {
  static String SetOff(DeviceInformation deviceInformation) {
    switch (deviceInformation.runtimeType) {
      case RemoteDevice:
        return SetOffRemote(deviceInformation);
      case LocalDevice:
        return SetOffLocal(deviceInformation);
    }
    return 'DeviceBase type not supported';
  }

  // Turn this device off
  static String SetOffLocal(LocalDevice deviceInformation) {
    return 'Response from this device off sucsessful';
  }

  // Change remote device off
  static String SetOffRemote(RemoteDevice remoteDevice) {
    try {
      HttpClient()
          .getUrl(Uri.parse('http://' +
              remoteDevice.getIp() +
              '/LED=OFF')) // produces a request object
          .then((request) => request.close()) // sends the request
          .then((HttpClientResponse response) {
        print(response.transform(Utf8Decoder()).listen(print));
      });
    } catch (e) {
      print('Exeption: ' + e);
    }
    return 'Response from remote device off sucsessful';
  }
}
