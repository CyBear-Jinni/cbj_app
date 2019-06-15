

import 'dart:io';

import 'package:test/test.dart';

import '../shered/NetworkManager.dart';

class SmartDeviceMain{


  SmartDeviceMain(){
    print("Smart device is activaited");
    waitForConnection();
  }


  void waitForConnection() async{

    while(true) {
      HttpRequest connectedDevice = await NetworkManager.PortListening();

      print('req' + connectedDevice.uri.pathSegments.toString());

      NetworkManager.SendResponse(connectedDevice, "Hello World");
    }
  }
}