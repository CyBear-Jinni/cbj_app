import 'smartDeviceBaseAbstract.dart';

// Abstract class for devices with property of how much to move and without how much time the device is doing action without stopping

abstract class SmartDeviceStatic extends SmartDeviceBaseAbstract{

  SmartDeviceStatic(String macAddress, String deviceName) : super(macAddress, deviceName);

}