

import '../../shered/enums.dart';
import 'SmartDeviceAbstractObject.dart';

class LightObject extends SmartDeviceAbstractObject{
  LightObject(String macAddress, String deviceName,) : super(DeviceType.Light, macAddress, deviceName) {
    print("New light object");
  }
}