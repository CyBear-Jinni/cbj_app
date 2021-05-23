// enum DeviceTypes {
//   Light, // Light ON/OFF
//   DynamicLight, // Light with brightness 0% to 100%
//   Blinds,
//   Boiler,
//   Fan,
//   AirConditioner,
//   Camera,
//   Fridge,
//   Toaster,
//   CoffeeMachine,
//   SmartTV,
//   RCAirplane,
//   RCCar,
//   Speakers,
//   Roomba, // Cleaning robot
//   Irrigation,
//   SmartBed,
//   AnimalTracker,
//   SmartCar,
//   SmartPool,
// }
//
// //  List of all the wishes that can be made
// enum DeviceActions {
//   SOn, //  Turn the device on
//   SOff, //  Turn the device off
//   SChangeState, //  Change device state to the opposite one
//   SDynamic, //  Set Dynamic Value
//   ODynamic, //  Open connection to change dynamic value
//   SMovement, //  Open connection to change dynamic value
//   GState, //  Get device state on/off
//   SBlindsUp, //  Turn the blinds up
//   SBlindsDown, //  Turn the blinds Down
//   SBlindsStop //  Stop the blinds
// }

import 'package:cybear_jinni/infrastructure/core/gen/smart_device/client/protoc_as_dart/smart_connection.pbgrpc.dart';

class EnumHelper {
  static String dTToString(DeviceTypes deviceType) {
    return deviceType.toString().replaceAll('DeviceType.', '');
  }

  static DeviceTypes stringToDt(String deviceTypeAsString) {
    String deviceTypeAsStringTemp = deviceTypeAsString;
    if (deviceTypeAsStringTemp.contains('Object')) {
      deviceTypeAsStringTemp = deviceTypeAsStringTemp.substring(
          0, deviceTypeAsStringTemp.indexOf('Object'));
    }
    for (final DeviceTypes deviceType in DeviceTypes.values) {
      if (dTToString(deviceType) == deviceTypeAsStringTemp) {
        return deviceType;
      }
    }
    return null;
  }

  ///  Convert deviceAction to string
  static String deviceActionToString(DeviceActions deviceAction) {
    return deviceAction.toString().replaceAll('DeviceActions.', '');
  }

  ///  Convert string to deviceAction
  static DeviceActions stringToDeviceAction(String deviceActionString) {
    for (final DeviceActions deviceAction in DeviceActions.values) {
      if (deviceActionToString(deviceAction) == deviceActionString) {
        return deviceAction;
      }
    }
    return null;
  }
}
