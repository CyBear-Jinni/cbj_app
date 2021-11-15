import 'dart:core';
import 'dart:ui';

import 'package:cybear_jinni/domain/devices/generic_blinds_device/generic_blinds_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_boiler_device/generic_boiler_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:cybear_jinni/domain/devices/generic_switch_device/generic_switch_entity.dart';

class SmartRoomObject {
  SmartRoomObject(
    this._roomName,
    this.grediantColor, {
    this.lightsInTheRoom,
    this.rgbwLightsInTheRoom,
    this.switchesInTheRoom,
    this.blindsInTheRoom,
    this.boilersInTheRoom,
  });

  final String _roomName;
  final List<GenericLightDE>? lightsInTheRoom;
  final List<GenericRgbwLightDE>? rgbwLightsInTheRoom;
  final List<GenericSwitchDE>? switchesInTheRoom;
  List<Color> grediantColor;
  List<GenericBlindsDE>? blindsInTheRoom;
  List<GenericBoilerDE>? boilersInTheRoom;

  String getRoomName() {
    return _roomName;
  }

  List<GenericLightDE>? getLights() {
    return lightsInTheRoom;
  }

  List<GenericRgbwLightDE>? getRgbwLightsColor() {
    return rgbwLightsInTheRoom;
  }

  List<GenericSwitchDE>? getSwitches() {
    return switchesInTheRoom;
  }

  List<GenericBlindsDE>? getBlinds() {
    return blindsInTheRoom;
  }

  List<GenericBoilerDE>? getBoilers() {
    return boilersInTheRoom;
  }
}
