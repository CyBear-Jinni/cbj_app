import '../../../shered/enums.dart';
import '../abstractSmartDevices/smartDeviceSimpleAbstract.dart';

class LightObject extends SmartDeviceSimple{
  LightObject(String macAddress, String deviceName,) : super(macAddress, deviceName) {
    print("New light object");
  }

  // return smart device type
  @override
  DeviceType getDeviceType() => DeviceType.Light;




}