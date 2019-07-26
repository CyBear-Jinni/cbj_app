import 'dart:io';

import '../../../shered/deviceInformation.dart';
import '../../../shered/enums.dart';
import '../../../shered/networkManager.dart';
import '../../../shered/permissions/permissionsManager.dart';
import '../../../shered/wishClasses/offWish.dart';
import '../../../shered/wishClasses/onWish.dart';

// The super base class of all the smart device class and smart device abstract classes
abstract class SmartDeviceBaseAbstract {
  DeviceInformation
      deviceInformation; // Save data about the device, remote or local IP or pin number
  String deviceName; // Default name of the device to show in the app
  final String macAddress; // Mac address of the physical device
  Map<String, PermissionsManager>
      devicePermissions; // Permissions of all the users to this device
  double watts; // Power consumption of the device
  DateTime
      computerActiveTime; // How much time the computer is on since last boot
  DateTime
      activeTimeTotal; // How much time the smart device was active (Doing action) total
  Map<DateTime, Function>
      activitiesLog; //  log of all the actions the device was and will do
  bool onOff = false; // Save the device state  on = true, off = false

  SmartDeviceBaseAbstract(this.macAddress, this.deviceName);

  // Getters

  // Get smart device type
  DeviceType getDeviceType() => null;

  Future<String> getIp() async {
    String a = await printIps();
    return a;
  }

  // TODO: Make the function return the mac address
  String getMacAddress() {
    Process.run('ls', ['-la']).then((ProcessResult result) {
      print(result.stdout);
      return result.stdout; // This is mock mac address
    });
    return null;
  }

  String getDeviceState() => onOff.toString();

  // Setters

  // Turn on the device basic action
  String _SetOn() {
    if (deviceInformation == null) {
      return "Device information is missing, cant trun on";
    }
    OnWish.SetOn(deviceInformation);
    onOff = true;
    return 'Turn on sucsessfuly';
  }

  // Turn off the device basic action
  String _SetOff() {
    if (deviceInformation == null) {
      return "Device information is missing, cant trun off";
    }
    OffWish.SetOff(deviceInformation);
    onOff = false;
    return 'Turn off sucsessfuly';
  }

  // More functions

  // Return PossibleWishes object if string wish exist (in general) else return null
  WishEnum ConvertWishStringToWishesObject(String wish) {
    for (WishEnum possibleWish in WishEnum.values) {
      print("Wish value " + EnumHelper.pWishToString(possibleWish));
      if (EnumHelper.pWishToString(possibleWish) == wish) {
        return possibleWish; // If wish exist return the PossibleWish object
      }
    }
    return null;
  }

  // Check if wish exist at all if true than check if base abstract have this wish and if true than execute it
  String ExecuteWish(String wishString) {
    WishEnum wish = ConvertWishStringToWishesObject(wishString);
    if (wish == null) return "Your wish does not exist";
    return WishInBaseClass(wish);
  }

  // All the wishes that are legit to execute from the base class
  String WishInBaseClass(WishEnum wish) {
    switch (wish) {
      case WishEnum.SOff:
        return _SetOff();
      case WishEnum.SOn:
        return _SetOn();
      case WishEnum.GState:
        return getDeviceState();
      default:
        return 'Your wish does not exist for this class';
    }
  }
}
