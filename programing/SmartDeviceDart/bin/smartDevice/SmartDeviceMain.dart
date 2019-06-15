

import '../shered/NetworkManager.dart';

class SmartDeviceMain{

  SmartDeviceMain(){
    print("Start");
    NetworkManager networkManager = new NetworkManager();
    networkManager.PortListening();
  }
}