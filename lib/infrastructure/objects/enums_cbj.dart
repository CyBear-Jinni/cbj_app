// enum EntityTypes {
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
// enum EntityActions {
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

import 'package:cbj_integrations_controller/infrastructure/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';

class EnumHelperCbj {
  static String dTToString(EntityTypes deviceType) {
    return deviceType.toString().replaceAll('DeviceType.', '');
  }

  static EntityTypes? stringToDt(String deviceTypeAsString) {
    String deviceTypeAsStringTemp = deviceTypeAsString;
    if (deviceTypeAsStringTemp.contains('Object')) {
      deviceTypeAsStringTemp = deviceTypeAsStringTemp.substring(
        0,
        deviceTypeAsStringTemp.indexOf('Object'),
      );
    }
    for (final EntityTypes deviceType in EntityTypes.values) {
      if (dTToString(deviceType) == deviceTypeAsStringTemp) {
        return deviceType;
      }
    }
    return null;
  }

  static String deviceVendorToString(VendorsAndServices vendorsAndServices) {
    return vendorsAndServices.toString().replaceAll('VendorsAndServices.', '');
  }

  static VendorsAndServices? stringToDeviceVendor(String deviceVendorAsString) {
    String deviceTypeAsStringTemp = deviceVendorAsString;
    if (deviceTypeAsStringTemp.contains('Object')) {
      deviceTypeAsStringTemp = deviceTypeAsStringTemp.substring(
        0,
        deviceTypeAsStringTemp.indexOf('Object'),
      );
    }
    for (final VendorsAndServices deviceType in VendorsAndServices.values) {
      if (deviceVendorToString(deviceType) == deviceTypeAsStringTemp) {
        return deviceType;
      }
    }
    return null;
  }

  ///  Convert deviceAction to string
  static String deviceActionToString(EntityActions deviceAction) {
    return deviceAction.toString().replaceAll('EntityActions.', '');
  }

  ///  Convert string to deviceAction
  static EntityActions? stringToDeviceAction(String deviceActionString) {
    for (final EntityActions deviceAction in EntityActions.values) {
      if (deviceActionToString(deviceAction) == deviceActionString) {
        return deviceAction;
      }
    }
    return null;
  }

  ///  Convert deviceState to string
  static String deviceStateToString(EntityStateGRPC deviceState) {
    return deviceState.toString().replaceAll('EntityStateGRPC.', '');
  }

  ///  Convert string to deviceState
  static EntityStateGRPC? stringToDeviceState(String deviceDysyrString) {
    for (final EntityStateGRPC deviceState in EntityStateGRPC.values) {
      if (deviceStateToString(deviceState) == deviceDysyrString) {
        return deviceState;
      }
    }
    return null;
  }
}
