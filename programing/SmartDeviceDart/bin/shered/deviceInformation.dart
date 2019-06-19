// Save data about the device, is it remote or local, what pin/ip does it have

class DeviceInformation {
  final String _macAddress; // MacAddress of the device
  final String _name; // Name of the device
  DeviceInformation(this._macAddress, this._name);

  // Getters
  String GetMacAddress() => _macAddress;
  String GetName() => _name;
}

class RemoteDevice extends DeviceInformation {
  String ip; // Ip of the device

  RemoteDevice(String macAddress, String name, this.ip)
      : super(macAddress, name);

  // Get
  String getIp() => ip;
}

class LocalDevice extends DeviceInformation {
  int pin; // Pin number of the device
  LocalDevice(String macAddress, String name) : super(macAddress, name);
}
