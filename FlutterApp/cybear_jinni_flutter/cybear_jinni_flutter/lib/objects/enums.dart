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
  Irrigation,
  SmartBed,
  AnimalTracker,
  SmartCar,
  SmartPool,
}

class EnumHelper {
  static String dTToString(DeviceType deviceType) {
    return deviceType.toString().replaceAll('DeviceType.', '');
  }

  static DeviceType stringToDt(String deviceTypeAsString) {
    for (DeviceType deviceType in DeviceType.values) {
      if (dTToString(deviceType) == deviceTypeAsString) {
        return deviceType;
      }
    }
    return null;
  }
}
