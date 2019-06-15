enum DeviceType {
  Light, // Light ON/OFF
  DynamicLight, // Light with brightness 0% to 100%
  Blinds,
  Thermostat,
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
}

class EnumHelper {
  static String dTToString(DeviceType deviceType) {
    return deviceType.toString().replaceAll('DeviceType.', '');
  }

  static String pWishToString(PossibleWishes deviceType) {
    return deviceType.toString().replaceAll('PossibleWishes.', '');
  }
}


enum PossibleWishes{
  TurnOn,
  TurnOff,
}
