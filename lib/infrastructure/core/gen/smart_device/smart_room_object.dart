import 'dart:core';
import 'dart:ui';

import 'package:cybear_jinni/infrastructure/core/gen/smart_device/smart_blinds_object.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/smart_device_object.dart';

class SmartRoomObject {
  SmartRoomObject(this._roomName, this.grediantColor,
      {this.lightsInTheRoom, this.blindsInTheRoom, this.boilersInTheRoom});

  final String _roomName;
  final List<SmartDeviceObject>? lightsInTheRoom;
  List<Color> grediantColor;
  List<SmartBlindsObject>? blindsInTheRoom;
  List<SmartBlindsObject>? boilersInTheRoom;

  String getRoomName() {
    return _roomName;
  }

  List<SmartDeviceObject>? getLights() {
    return lightsInTheRoom;
  }

  List<SmartBlindsObject>? getBlinds() {
    return blindsInTheRoom;
  }

  List<SmartBlindsObject>? getBoilers() {
    return blindsInTheRoom;
  }
}
