import 'package:smart_home_flutter/objects/smart_device/smart_device_objcet.dart';

class SmartRoomObject {
  String _roomName;
  List<SmartDevice> _devicesInTheRoom;

  SmartRoomObject(this._roomName, this._devicesInTheRoom);

  String getRoomName() {
    return _roomName;
  }

  List<SmartDevice> getDevices() {
    return _devicesInTheRoom;
  }
}
