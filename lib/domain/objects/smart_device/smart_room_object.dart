import 'dart:core';
import 'dart:ui';

import 'package:cybear_jinni/domain/objects/smart_device/smart_blinds_object.dart';
import 'package:cybear_jinni/domain/objects/smart_device/smart_device_object.dart';

class SmartRoomObject {
  SmartRoomObject(this._roomName, this._lightsInTheRoom, this.grediantColor,
      {this.blindsInTheRoom});

  final String _roomName;
  final List<SmartDeviceObject> _lightsInTheRoom;
  List<Color> grediantColor;
  List<SmartBlindsObject> blindsInTheRoom;

  String getRoomName() {
    return _roomName;
  }

  List<SmartDeviceObject> getLights() {
    return _lightsInTheRoom;
  }

  List<SmartBlindsObject> getBlinds() {
    return blindsInTheRoom;
  }

}
