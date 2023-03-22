import 'dart:core';
import 'dart:ui';

import 'package:cybear_jinni/domain/generic_devices/generic_blinds_device/generic_blinds_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_boiler_device/generic_boiler_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_light_device/generic_light_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_printer_device/generic_printer_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_rgbw_light_device/generic_rgbw_light_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_computer_device/generic_smart_computer_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_plug_device/generic_smart_plug_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_smart_tv/generic_smart_tv_entity.dart';
import 'package:cybear_jinni/domain/generic_devices/generic_switch_device/generic_switch_entity.dart';

class SmartRoomObject {
  SmartRoomObject(
    this._roomName,
    this.grediantColor, {
    this.lightsInTheRoom,
    this.rgbwLightsInTheRoom,
    this.switchesInTheRoom,
    this.blindsInTheRoom,
    this.boilersInTheRoom,
    this.smartPlugsInTheRoom,
    this.smartComputersInTheRoom,
    this.smartTvsInTheRoom,
    this.printersInTheRoom,
  });

  final String _roomName;
  final List<GenericLightDE>? lightsInTheRoom;
  final List<GenericRgbwLightDE>? rgbwLightsInTheRoom;
  final List<GenericSwitchDE>? switchesInTheRoom;
  final List<GenericSmartPlugDE>? smartPlugsInTheRoom;
  final List<GenericSmartComputerDE>? smartComputersInTheRoom;
  final List<GenericSmartTvDE>? smartTvsInTheRoom;
  final List<Color> grediantColor;
  final List<GenericBlindsDE>? blindsInTheRoom;
  final List<GenericBoilerDE>? boilersInTheRoom;
  final List<GenericPrinterDE>? printersInTheRoom;

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

  List<GenericSmartPlugDE>? getSmartPlugs() {
    return smartPlugsInTheRoom;
  }

  List<GenericSmartComputerDE>? getSmartComputers() {
    return smartComputersInTheRoom;
  }

  List<GenericSmartTvDE>? getSmartTvs() {
    return smartTvsInTheRoom;
  }

  List<GenericBlindsDE>? getBlinds() {
    return blindsInTheRoom;
  }

  List<GenericBoilerDE>? getBoilers() {
    return boilersInTheRoom;
  }

  List<GenericPrinterDE>? getPrinters() {
    return printersInTheRoom;
  }
}
