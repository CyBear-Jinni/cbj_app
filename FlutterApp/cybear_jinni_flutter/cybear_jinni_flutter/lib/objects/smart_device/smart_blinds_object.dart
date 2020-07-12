import 'package:CybearJinni/objects/enums.dart';
import 'package:CybearJinni/objects/smart_device/smart_device_object.dart';
import 'package:connectivity/connectivity.dart';

import 'client/smart_client.dart';

class SmartBlindsObject extends SmartDeviceObject {
  SmartBlindsObject(DeviceType deviceType, String name, String ip)
      : super(deviceType, name, ip);

  Future<String> blindsUp() async {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.wifi &&
        await getCurrentWifiName() == SmartDeviceObject.homeWifiName) {
      //  If current network is the network of the smart device set using the local method and not the remote
      print('Moving blinds up LAN');
      return await SmartClient.setSmartBlindsUp(this);
    } else if (connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.mobile) {
      print('Moving blinds up Remote');
      return await setBlindStateRemote(WishEnum.SBlindsUp);
    } else {
      print('Not connected to a network');
    }

    return 'Error getting device state';
  }

  Future<String> blindsDown() async {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.wifi &&
        await getCurrentWifiName() == SmartDeviceObject.homeWifiName) {
      //  If current network is the network of the smart device set using the local method and not the remote
      print('Moving blinds Down LAN');
      return await SmartClient.setSmartBlindsDown(this);
    } else if (connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.mobile) {
      print('Moving blinds down Remote');
      return await setBlindStateRemote(WishEnum.SBlindsDown);
    } else {
      print('Not connected to a network');
    }

    return 'Error getting device state';
  }

  Future<String> blindsStop() async {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.wifi &&
        await getCurrentWifiName() ==
            SmartDeviceObject
                .homeWifiName) { //  If current network is the network of the smart device set using the local method and not the remote
      print('Stopping blinds LAN');
      return await SmartClient.setSmartBlindsStop(this);
    } else if (connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.mobile) {
      print('Stopping blinds Remote');
      return await setBlindStateRemote(WishEnum.SBlindsStop);
    } else {
      print('Not connected to a network');
    }

    return 'Error getting device state';


    String deviceSuccessStatus = await SmartClient.setSmartBlindsStop(this);
    print('Blinds stop status is: ' + deviceSuccessStatus.toString());
    return deviceSuccessStatus;
  }


  Future<String> setBlindStateRemote(WishEnum wish) async {
    return (await fireStoreClass.changeBlindsState(roomName, name, wish))
        .toString();
  }
}
