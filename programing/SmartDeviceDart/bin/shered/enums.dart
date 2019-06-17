enum DeviceType {
  Light, // Light ON/OFF
  DynamicLight, // Light with brightness 0% to 100%
  Blinds,
  Thermostat,
  Fan,
  AirConditioner,
  Camera,
  Fridge,
  Toaster,
  CoffeeMachine,
  SmartTV,
  RCAirplane,
  RCCar,
  Speakers,
  Roomba, // Cleaning robot
  Irrigation,   // Give water to plants
  SmartBed,
  AnimalTracker,
  SmartCar,
}

class EnumHelper {
  static String dTToString(DeviceType deviceType) {
    return deviceType.toString().replaceAll('DeviceType.', '');
  }

  static String pWishToString(WishEnum deviceType) {
    return deviceType.toString().replaceAll('WishEnum.', '');
  }
}

// List of all the wishes that can be made
enum WishEnum{
  SOn,  // Turn the device on
  SOff, // Turn the device off
  SDynamic,  // Set Dynamic Value
  ODynamic,  // Open connection to change dynamic value
  SMovement,  // Open connection to change dynamic value
}
