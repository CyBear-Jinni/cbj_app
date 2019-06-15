

import 'dart:io';

import 'package:test/test.dart';

import '../shered/NetworkManager.dart';

class SmartDeviceMain{


  SmartDeviceMain(){
    print("Start");
    waitForConnection();
  }


  void waitForConnection() async{

    while(true) {
      HttpRequest connectedDevice = await NetworkManager.PortListening();

      NetworkManager.SendResponse(connectedDevice, "Hello World");
    }
  }
}