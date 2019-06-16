import 'smartDeviceBaseAbstract.dart';

// Abstract class for smart devices with on time property
abstract class SmartDeviceSimple extends SmartDeviceBaseAbstract {

  SmartDeviceSimple(String macAddress, String deviceName) : super(macAddress, deviceName);
}