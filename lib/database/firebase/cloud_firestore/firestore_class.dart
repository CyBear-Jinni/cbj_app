import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../objects/enums.dart';

class FireStoreClass {
  String path = '/SmartHomes/GuyHome/Devices/Lights/';
  String restOfPath = '/DevicesInTheRoom/';
  String deviceName = 'Stairs and Storage';

  Future<String> changeToOppositeSwitchState(
      String roomName, String smartInstanceName) async {
    String fullPath = createDocumentFullPath(roomName);

    FirebaseFirestore.instance.doc(fullPath).get().then((DocumentSnapshot ds) {
      FirebaseFirestore.instance.doc(fullPath).update({
        smartInstanceName: !(ds.data()[smartInstanceName] == true.toString())
      });
    });
    return await getDeviceStatus(roomName, smartInstanceName);
  }

  Future<String> changeSwitchState(String roomName, String smartInstanceName,
      bool value) async {
    String fullPath = createDocumentFullPath(roomName);

    FirebaseFirestore.instance.doc(fullPath).update({smartInstanceName: value});

    return await getDeviceStatus(roomName, smartInstanceName);
  }

  Future<String> getDeviceStatus(String roomName,
      String smartInstanceName) async {
    String fullPath = createDocumentFullPath(roomName);

    DocumentSnapshot documentSnapshot =
    await FirebaseFirestore.instance.doc(fullPath).get();

    return documentSnapshot.data()[smartInstanceName].toString();
  }

  String createDocumentFullPath(String roomName) {
    return path;
//    return path + roomName + restOfPath + deviceName;
  }

  Future<String> changeBlindsState(String roomName, String smartInstanceName,
      WishEnum wish) async {
    String fullPath = createDocumentFullPath(roomName);

    FirebaseFirestore.instance
        .doc(fullPath)
        .update({smartInstanceName: EnumHelper.wishEnumToString(wish)});

    return await getDeviceStatus(roomName, smartInstanceName);
  }
}
