import 'package:smart_home_flutter/objects/enums.dart';
import 'package:smart_home_flutter/objects/smart_device/smart_device_objcet.dart';

import 'client/smart_client.dart';


class SmartBlindsObject extends SmartDeviceObject {

  SmartBlindsObject(DeviceType deviceType, String name, String ip)
      : super(deviceType, name, ip);


  Future<String> blindsUp() async {
    String deviceSuccessStatus = await SmartClient.setSmartBlindsUp(ip);
    print('Blinds up status is: ' + deviceSuccessStatus.toString());
    return deviceSuccessStatus;
  }


  Future<String> blindsDown() async {
    String deviceSuccessStatus = await SmartClient.setSmartBlindsDown(ip);
    print('Blinds down status is: ' + deviceSuccessStatus.toString());
    return deviceSuccessStatus;
  }


  Future<String> blindsStop() async {
    String deviceSuccessStatus = await SmartClient.setSmartBlindsStop(ip);
    print('Blinds stop status is: ' + deviceSuccessStatus.toString());
    return deviceSuccessStatus;
  }
}
