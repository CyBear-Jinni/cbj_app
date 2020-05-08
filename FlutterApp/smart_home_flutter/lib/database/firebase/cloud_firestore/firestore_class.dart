import 'package:cloud_firestore/cloud_firestore.dart';


class FireStoreClass {

  Future<String> changeToOppositeSwitchState(String roomName,
      String deviceName) async {
    Firestore.instance
        .collection('smartDevices')
        .document(roomName)
        .get()
        .then((DocumentSnapshot ds) {
      Firestore.instance
          .collection('smartDevices')
          .document(roomName)
          .updateData({deviceName: !ds.data[deviceName]});
    });
    return await getDeviceStatus(roomName, deviceName);
  }

  Future<String> changeSwitchState(String roomName, String deviceName,
      bool value) async {
    Firestore.instance
        .collection('smartDevices')
        .document(roomName)
        .updateData({deviceName: value});

    return await getDeviceStatus(roomName, deviceName);
  }

  Future<String> getDeviceStatus(String roomName, String deviceName) async {
    DocumentSnapshot documentSnapshot = await Firestore.instance
        .collection('smartDevices')
        .document(roomName)
        .get();

    return documentSnapshot.data[deviceName].toString();
  }
}
