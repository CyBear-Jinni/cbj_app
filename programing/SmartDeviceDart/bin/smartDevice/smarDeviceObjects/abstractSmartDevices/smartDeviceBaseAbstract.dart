import 'dart:io';

import '../../../shered/networkManager.dart';
import '../../../shered/enums.dart';
import '../../../shered/permissions/permissionsManager.dart';


// The super base class of all the smart device class and smart device abstract classes
abstract class SmartDeviceBaseAbstract{
  String deviceName; // Default name of the device to show in the app
  final String macAddress;
  Map<String, PermissionsManager> devicePermissions;

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