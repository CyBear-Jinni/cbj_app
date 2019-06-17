
import '../deviceInformation.dart';

class OffWish {

  static String SetOff(DeviceInformation deviceInformation){
    return deviceInformation.isRemote? SetOffRemote(deviceInformation): SetOffLocal(deviceInformation);
  }

  // Turn this device off
  static String SetOffLocal(DeviceInformation deviceInformation) {
    return 'Response from this device off sucsessful';
  }

  // Change remote device off
  static String SetOffRemote(DeviceInformation deviceInformation) {
    return 'Response from remote device off sucsessful';
  }
}