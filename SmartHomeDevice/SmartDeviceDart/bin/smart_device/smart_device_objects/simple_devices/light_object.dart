import '../../../shered/enums.dart';
import '../abstract_smart_devices/smart_device_simple_abstract.dart';

class LightObject extends SmartDeviceSimple{
  LightObject(String macAddress, String deviceName,) : super(macAddress, deviceName) {
    print("New light object");
  }

  // return smart device type
  @override
  DeviceType getDeviceType() => DeviceType.Light;




}