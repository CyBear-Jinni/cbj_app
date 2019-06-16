import 'smartDeviceSimpleAbstract.dart';



// Abstract class for smart devices class with dynamic property
abstract class SmartDeviceDynamic extends SmartDeviceSimple{

  double powerActionValue; // Save how much power to do for action

  SmartDeviceDynamic(String macAddress, String deviceName) : super(macAddress, deviceName);

}