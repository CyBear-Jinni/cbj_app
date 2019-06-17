
// Class to change wish on status to device
import '../deviceInformation.dart';

class OnWish {

  static String SetOn(DeviceInformation deviceInformation){
    return deviceInformation.isRemote? SetOnRemote(deviceInformation): SetOnLocal(deviceInformation);
  }

  // Turn this device on
  static String SetOnLocal(DeviceInformation deviceInformation) {
    return 'Response from this device on sucsessful';
  }

  // Turn remote device on
  static String SetOnRemote(DeviceInformation deviceInformation) {
    return 'Response from remote device on sucsessful';
  }
}