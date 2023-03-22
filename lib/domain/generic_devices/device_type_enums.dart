import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';


///  List of all physical devices types
enum PhysicalDeviceType {
  nanoPiDuo2,
  nanoPiAir,
  nanoPiNeo,
  nanoPiNeo2,
  raspberryPi,
  notSupported,
}

enum RaspberryPiType {
  raspberryPi3ModelBRev1_2,
  raspberryPi4ModelBRev1_4,
}

class EnumHelperCbj {
  static String dTToString(DeviceTypes deviceType) {
    return deviceType.toString().replaceAll('EntityState.', '');
  }

  static String deviceVendorToString(VendorsAndServices vendorsAndServices) {
    return vendorsAndServices.toString().replaceAll('VendorsAndServices.', '');
  }

  static DeviceTypes? stringToDt(String deviceTypeAsString) {
    String deviceTypeAsStringTemp = deviceTypeAsString;
    if (deviceTypeAsStringTemp.contains('Object')) {
      deviceTypeAsStringTemp = deviceTypeAsStringTemp.substring(
        0,
        deviceTypeAsStringTemp.indexOf('Object'),
      );
    }
    for (final DeviceTypes deviceType in DeviceTypes.values) {
      if (dTToString(deviceType) == deviceTypeAsStringTemp) {
        return deviceType;
      }
    }
    return null;
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
  static String deviceActionToString(DeviceActions deviceAction) {
    return deviceAction.toString().replaceAll('DeviceActions.', '');
  }

  ///  Convert string to deviceAction
  static DeviceActions? stringToDeviceAction(String deviceActionString) {
    for (final DeviceActions deviceAction in DeviceActions.values) {
      if (deviceActionToString(deviceAction) == deviceActionString) {
        return deviceAction;
      }
    }
    return null;
  }

  ///  Convert deviceState to string
  static String deviceStateToString(DeviceStateGRPC deviceState) {
    return deviceState.toString().replaceAll('DeviceStateGRPC.', '');
  }

  ///  Convert string to deviceState
  static DeviceStateGRPC? stringToDeviceState(String deviceStateAsString) {
    for (final DeviceStateGRPC deviceState in DeviceStateGRPC.values) {
      if (deviceStateToString(deviceState) == deviceStateAsString) {
        return deviceState;
      }
    }
    return null;
  }

  ///  Convert physicalDeviceType to string
  static String physicalDeviceTypeToString(PhysicalDeviceType? deviceType) {
    return deviceType.toString().replaceAll('PhysicalDeviceType.', '');
  }

  /// Return the corresponding SmartDeviceBaseAbstract Object of the deviceType
  static dynamic deviceTypeToSmartDeviceBaseAbstractObject(
    DeviceTypes deviceType,
  ) {
    throw Exception('$deviceType Conditioner was not implemented yet');
  }

  /// Returning the non abstract of this SmartDeviceBaseAbstract
  static Type getTheNonAbstractObjectOfSmartDeviceBaseAbstract(
    dynamic smartDeviceBaseAbstract,
    DeviceTypes deviceType,
  ) {
    throw Exception('$deviceType Conditioner was not implemented yet');
  }
}
