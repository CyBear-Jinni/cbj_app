import 'package:CybearJinni/objects/enums.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreClass {
  String path = '/SmartHomes/GuyHome/Devices/Lights/';
  String restOfPath = '/DevicesInTheRoom/';
  String deviceName = 'Stairs and Storage';

  Future<String> changeToOppositeSwitchState(
      String roomName, String smartInstanceName) async {
    String fullPath = createDocumentFullPath(roomName);

    Firestore.instance.document(fullPath).get().then((DocumentSnapshot ds) {
      Firestore.instance
          .document(fullPath)
          .updateData({smartInstanceName: !ds.data[smartInstanceName]});
    });
    return await getDeviceStatus(roomName, smartInstanceName);
  }

  Future<String> changeSwitchState(String roomName, String smartInstanceName,
      bool value) async {
    String fullPath = createDocumentFullPath(roomName);

    Firestore.instance
        .document(fullPath)
        .updateData({smartInstanceName: value});

    return await getDeviceStatus(roomName, smartInstanceName);
  }

  Future<String> getDeviceStatus(String roomName,
      String smartInstanceName) async {
    String fullPath = createDocumentFullPath(roomName);

    DocumentSnapshot documentSnapshot =
    await Firestore.instance.document(fullPath).get();

    return documentSnapshot.data[smartInstanceName].toString();
  }

  String createDocumentFullPath(String roomName) {
    return path;
//    return path + roomName + restOfPath + deviceName;
  }

  Future<String> changeBlindsState(String roomName, String smartInstanceName,
      WishEnum wish) async {
    String fullPath = createDocumentFullPath(roomName);

    Firestore.instance
        .document(fullPath)
        .updateData({smartInstanceName: EnumHelper.wishEnumToString(wish)});

    return await getDeviceStatus(roomName, smartInstanceName);
  }
}
