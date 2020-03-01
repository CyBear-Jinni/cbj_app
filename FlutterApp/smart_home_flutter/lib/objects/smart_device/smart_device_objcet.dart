import 'package:smart_home_flutter/objects/smart_device/send_to_smart_device.dart';

import '../enums.dart';


class SmartDeviceObject {
  DeviceType deviceType;
  String roomName;
  String name;
  String ip;


  SmartDeviceObject(this.deviceType, this.name, String ip, [this.roomName]) {
    if (legitIp(ip)) {
      //  Checks if regex contained only valid ip and nothing else
      this.ip = ip;
    } else {
      throw ('Incorrect formet of IP');
    }
  }


  //  Get


  //  ignore: missing_return
  Future<bool> getDeviceState() async {
    String deviceStateString = await getDeviceStateRequest(ip);
    print("Go on little one: " + deviceStateString);
    if (deviceStateString == 'true') {
      return true;
    } else if (deviceStateString == 'false') {
      return false;
    }
    print("Were did you Go on little one");
  }


  //  Set


  Future<String> setLightState(bool state) async {
    return state ? await turnOn(ip) : await turnOff(ip);
  }


  static bool legitIp(String ip) {
    String tempRegExIp = regexpIP(ip); //  Save to string a valid ip
    return ip.length == tempRegExIp.length;
  }


  static String regexpIP(String ip) {
    return RegExp(
            r'((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))')
        .stringMatch(ip);
  }
}
