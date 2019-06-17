
// Save data about the device, is it remote or local, what pin/ip does it have
class DeviceInformation{
  bool isRemote = false;  // Is the device remote (need to send request to the device) or connected to the pins of this computer
  DeviceBase deviceBase;

  DeviceInformation(this.deviceBase);

}




class DeviceBase{
  final String _macAddress;  // MacAddress of the device
  final String _name;  // Name of the device
  DeviceBase(this._macAddress, this._name);

  // Getters
  String GetMacAddress() => _macAddress;
  String GetName() => _name;

}


class RemoteDevice extends DeviceBase{
  String ip;  // Ip of the device

  RemoteDevice(String macAddress, String name) : super(macAddress, name);



}

class LocalDevice extends DeviceBase {
  int pin;  // Pin number of the device
  LocalDevice(String macAddress, String name) : super(macAddress, name);

}


