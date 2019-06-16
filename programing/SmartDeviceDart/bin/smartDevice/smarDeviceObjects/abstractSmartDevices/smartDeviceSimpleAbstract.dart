import 'smartDeviceBaseAbstract.dart';

// Abstract class for smart devices with on time property
abstract class SmartDeviceSimple extends SmartDeviceBaseAbstract {
  double howMuchTimeTheDeviceDoingAction;  // How much time the smart device was active (Doing action) continuously

  SmartDeviceSimple(String macAddress, String deviceName) : super(macAddress, deviceName);
}