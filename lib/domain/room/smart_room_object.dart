import 'dart:core';
import 'dart:ui';

import 'package:cybear_jinni/domain/devices/device/device_entity.dart';



class SmartRoomObject {
  SmartRoomObject(this._roomName, this.grediantColor,
      {this.lightsInTheRoom, this.blindsInTheRoom, this.boilersInTheRoom});

  final String _roomName;
  final List<DeviceEntity>? lightsInTheRoom;
  List<Color> grediantColor;
  List<DeviceEntity>? blindsInTheRoom;
  List<DeviceEntity>? boilersInTheRoom;

  String getRoomName() {
    return _roomName;
  }

  List<DeviceEntity>? getLights() {
    return lightsInTheRoom;
  }

  List<DeviceEntity>? getBlinds() {
    return blindsInTheRoom;
  }

  List<DeviceEntity>? getBoilers() {
    return blindsInTheRoom;
  }
}
