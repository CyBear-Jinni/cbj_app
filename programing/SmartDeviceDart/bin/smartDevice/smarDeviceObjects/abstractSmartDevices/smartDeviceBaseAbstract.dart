import 'dart:io';

import '../../../shered/networkManager.dart';
import '../../../shered/enums.dart';
import '../../../shered/permissions/permissionsManager.dart';


// The super base class of all the smart device class and smart device abstract classes
abstract class SmartDeviceBaseAbstract{
  String deviceName; // Default name of the device to show in the app
  final String macAddress;  // Mac address of the physical device
  Map<String, PermissionsManager> devicePermissions;  // Permissions of all the users to this device
  double watts;  // Power consumption of the device
  DateTime computerActiveTime;  // How much time the computer is on since last boot
  DateTime activeTimeTotal;  // How much time the smart device was active (Doing action) total
  Map<DateTime, Function> activitiesLog; //  log of all the actions the device was and will do

  SmartDeviceBaseAbstract(this.macAddress, this.deviceName);


  // Method that decide what to do with incoming action
  String action(String wish) {
    for(PossibleWishes possibleWish in PossibleWishes.values){
      if(EnumHelper.pWishToString(possibleWish) == wish)
        {
          switch (possibleWish){
            case PossibleWishes.TurnOff:
              return TurnOff();
              break;
            case PossibleWishes.TurnOn:
              return TurnOn();
              break;
          }
        }
    }
    return 'Your wish does not exist';
  }

  // Get smart device type
  DeviceType getDeviceType() => null;

  // Turn on the light of the device
  String TurnOn() => 'Turn on sucsessfuly';



  // Turn off the light of the device
  String TurnOff() => 'Turn on sucsessfuly';





  Future<String> getIp() async{
    String a = await printIps();
    return a;
  }

  // TODO: Make the function return the mac address
  String getMacAddress() {
    Process.run('ls', ['-la']).then((ProcessResult result){
      print(result.stdout);
      return result.stdout; // This is mock mac address
    });
    return null;
  }
}