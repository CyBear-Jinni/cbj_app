import 'dart:io';

import '../../shered/NetworkManager.dart';
import '../../shered/enums.dart';

abstract class SmartDeviceAbstractObject{
  String deviceName; // Default name of the device to show in the app
  DeviceType deviceType;
  final String macAddress;

  SmartDeviceAbstractObject(this.deviceType, this.macAddress, this.deviceName);


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

  String TurnOn(){
    return 'Turn on sucsessfuly';
  }



  String TurnOff(){
    return 'Turn on sucsessfuly';
  }





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