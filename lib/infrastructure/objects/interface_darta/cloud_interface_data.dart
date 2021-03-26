import 'package:cybear_jinni/infrastructure/core/gen/smart_device/smart_blinds_object.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/smart_device_object.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/smart_room_object.dart';
import 'package:cybear_jinni/infrastructure/objects/enums.dart';
import 'package:cybear_jinni/presentation/core/theme_data.dart';

final List<SmartRoomObject> rooms = <SmartRoomObject>[room1, room3, room4];

SmartRoomObject room1 = SmartRoomObject(
    'Guy', room1DevicesList, GradientColors.sea,
    blindsInTheRoom: room1blindsList);
SmartRoomObject room3 =
    SmartRoomObject('Outside North', room3DevicesList, GradientColors.sunset);
SmartRoomObject room4 =
    SmartRoomObject('Outside South', room4DevicesList, GradientColors.sky);

final List<SmartDeviceObject> room1DevicesList = <SmartDeviceObject>[
  SmartDeviceObject(DeviceTypeEnum.Light, 'Ceiling', '10.0.0.29', 'Guy'),
];

final List<SmartDeviceObject> room3DevicesList = <SmartDeviceObject>[
  SmartDeviceObject(
      DeviceTypeEnum.Light, 'UpStairs', '10.0.0.30', 'Outside North'),
  SmartDeviceObject(
      DeviceTypeEnum.Light, 'Storage', '10.0.0.30', 'Outside North'),
  SmartDeviceObject(
      DeviceTypeEnum.Light, 'Storage', '10.0.0.30', 'Outside North'),
  SmartDeviceObject(
      DeviceTypeEnum.Light, 'Storage', '10.0.0.30', 'Outside North'),
  SmartDeviceObject(
      DeviceTypeEnum.Light, 'BackDoor', '10.0.0.32', 'Outside North'),
  SmartDeviceObject(
      DeviceTypeEnum.Light, 'DownStairs', '10.0.0.32', 'Outside North'),
];

final List<SmartDeviceObject> room4DevicesList = <SmartDeviceObject>[
  SmartDeviceObject(DeviceTypeEnum.Light, 'Gate', '10.0.0.31', 'Outside South'),
];

final List<SmartBlindsObject> room1blindsList = <SmartBlindsObject>[
  SmartBlindsObject(DeviceTypeEnum.Blinds, 'SouthBlinds', '10.0.0.34'),
];
