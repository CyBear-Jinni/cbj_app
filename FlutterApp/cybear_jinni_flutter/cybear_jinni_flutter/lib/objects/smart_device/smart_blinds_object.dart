import 'package:CybearJinni/objects/enums.dart';
import 'package:CybearJinni/objects/smart_device/smart_device_object.dart';

import 'client/smart_client.dart';

class SmartBlindsObject extends SmartDeviceObject {
  SmartBlindsObject(DeviceType deviceType, String name, String ip)
      : super(deviceType, name, ip);

  Future<String> blindsUp() async {
    String deviceSuccessStatus = await SmartClient.setSmartBlindsUp(this);
    print('Blinds up status is: ' + deviceSuccessStatus.toString());
    return deviceSuccessStatus;
  }

  Future<String> blindsDown() async {
    String deviceSuccessStatus = await SmartClient.setSmartBlindsDown(this);
    print('Blinds down status is: ' + deviceSuccessStatus.toString());
    return deviceSuccessStatus;
  }

  Future<String> blindsStop() async {
    String deviceSuccessStatus = await SmartClient.setSmartBlindsStop(this);
    print('Blinds stop status is: ' + deviceSuccessStatus.toString());
    return deviceSuccessStatus;
  }
}
