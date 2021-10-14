import 'dart:core';
import 'dart:ui';

import 'package:cybear_jinni/domain/devices/generic_light_device/generic_light_entity.dart';

class SmartRoomObject {
  SmartRoomObject(
    this._roomName,
    this.grediantColor, {
    this.lightsInTheRoom,
    this.blindsInTheRoom,
    this.boilersInTheRoom,
  });

  final String _roomName;
  final List<GenericLightDE>? lightsInTheRoom;
  List<Color> grediantColor;
  List<GenericLightDE>? blindsInTheRoom;
  List<GenericLightDE>? boilersInTheRoom;

  String getRoomName() {
    return _roomName;
  }

  List<GenericLightDE>? getLights() {
    return lightsInTheRoom;
  }

  List<GenericLightDE>? getBlinds() {
    return blindsInTheRoom;
  }

  List<GenericLightDE>? getBoilers() {
    return blindsInTheRoom;
  }
}
