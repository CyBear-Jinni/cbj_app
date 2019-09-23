import 'package:smart_home_flutter/objects/enums.dart';
import 'package:smart_home_flutter/objects/smart_device/smart_device_objcet.dart';
import 'package:smart_home_flutter/objects/smart_device/smart_room_object.dart';

final List<SmartRoomObject> rooms = [room1, room2, room3, room4];

SmartRoomObject room1 = SmartRoomObject("Guy", room1DevicesList);
SmartRoomObject room2 = SmartRoomObject("Kitchen", rom2DevicesList);
SmartRoomObject room3 = SmartRoomObject("Outside", rom3DevicesList);
SmartRoomObject room4 = SmartRoomObject("Saar", rom4DevicesList);
SmartRoomObject room5 = SmartRoomObject("Sami", rom5DevicesList);

final List<SmartDevice> room1DevicesList = [
  SmartDevice(DeviceType.Light, "Guy main", "10.0.0.20"),
  SmartDevice(DeviceType.Light, "Guy bed", "10.0.0.21"),
  SmartDevice(DeviceType.Light, "Guy desk", "10.0.0.30")
];

final List<SmartDevice> rom2DevicesList = [
  SmartDevice(DeviceType.Light, "Kitchen main", "10.0.0.11"),
  SmartDevice(DeviceType.Light, "Kitchen table", "10.0.0.6"),
  SmartDevice(DeviceType.Light, "Kitchen main", "10.0.0.30")
];

final List<SmartDevice> rom3DevicesList = [
  SmartDevice(DeviceType.Light, "Outside stairs", "10.0.0.7"),
  SmartDevice(DeviceType.Light, "Outside light", "10.0.0.8"),
  SmartDevice(DeviceType.Light, "Outside main", "10.0.0.30")
];

final List<SmartDevice> rom4DevicesList = [
  SmartDevice(DeviceType.Light, "Saar  main", "10.0.0.9"),
  SmartDevice(DeviceType.Light, "Saar bed", "10.0.0.10"),
  SmartDevice(DeviceType.Light, "Saar main", "10.0.0.30")
];

final List<SmartDevice> rom5DevicesList = [
  SmartDevice(DeviceType.Light, "Sami  main", "10.0.0.11"),
  SmartDevice(DeviceType.Light, "Sami bed", "10.0.0.12"),
  SmartDevice(DeviceType.Light, "Sami main", "10.0.0.30")
];
