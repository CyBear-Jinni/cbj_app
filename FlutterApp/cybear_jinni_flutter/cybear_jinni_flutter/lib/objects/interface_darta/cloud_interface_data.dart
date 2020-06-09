import 'package:CybearJinni/objects/enums.dart';
import 'package:CybearJinni/objects/smart_device/smart_blinds_object.dart';
import 'package:CybearJinni/objects/smart_device/smart_device_object.dart';
import 'package:CybearJinni/objects/smart_device/smart_room_object.dart';

final List<SmartRoomObject> rooms = [room1, room2, room3, room4];

SmartRoomObject room1 =
    SmartRoomObject("Guy", room1DevicesList, blindsInTheRoom: room1blindsList);
SmartRoomObject room2 = SmartRoomObject('Kitchen', room2DevicesList);
SmartRoomObject room3 = SmartRoomObject('Outside North', room3DevicesList);
SmartRoomObject room4 = SmartRoomObject('Bar', room4DevicesList);
SmartRoomObject room5 = SmartRoomObject('Sami', room5DevicesList);

//  Room lights

//  Guy
final List<SmartDeviceObject> room1DevicesList = [
  SmartDeviceObject(DeviceType.Light, 'Ceiling lamp', '10.0.0.23', 'Guy'),
  SmartDeviceObject(DeviceType.Light, 'Bed', '10.0.0.24', 'Guy'),
  SmartDeviceObject(DeviceType.Light, 'Desk', '10.0.0.50', 'Guy')
];

//  Kitchen
final List<SmartDeviceObject> room2DevicesList = [
  SmartDeviceObject(DeviceType.Light, 'Main', '10.0.0.10', 'Kitchen'),
  SmartDeviceObject(DeviceType.Light, 'Table', '10.0.0.10', 'Kitchen'),
  SmartDeviceObject(DeviceType.Light, 'Main', '10.0.0.51', 'Kitchen')
];

//  Outside
final List<SmartDeviceObject> room3DevicesList = [
  SmartDeviceObject(DeviceType.Light, 'Stairs', '10.0.0.30', 'Outside North'),
  SmartDeviceObject(DeviceType.Light, 'Storage', '10.0.0.30', 'Outside North'),
//  SmartDeviceObject(DeviceType.Light, 'Main', '10.0.0.14', 'Outside North')
];

//  Bar
final List<SmartDeviceObject> room4DevicesList = [
  SmartDeviceObject(DeviceType.Light, 'Main', '10.0.0.15', 'Bar'),
  SmartDeviceObject(DeviceType.Light, 'Bed', '10.0.0.15', 'Bar'),
  SmartDeviceObject(DeviceType.Light, 'stairs', '10.0.0.19', 'Bar')
];

//  Sami
final List<SmartDeviceObject> room5DevicesList = [
  SmartDeviceObject(DeviceType.Light, 'Main', '10.0.0.11', 'Sami'),
  SmartDeviceObject(DeviceType.Light, 'Bed', '10.0.0.12', 'Sami'),
  SmartDeviceObject(DeviceType.Light, 'Stairs', '10.0.0.16', 'Sami')
];

//  Room BlindsonOffState

final List<SmartBlindsObject> room1blindsList = [
  SmartBlindsObject(DeviceType.Blinds, 'South blinds', '10.0.0.24'),
];
