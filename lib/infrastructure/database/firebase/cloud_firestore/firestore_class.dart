import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybear_jinni/infrastructure/core/gen/smart_device/client/protoc_as_dart/smart_connection.pb.dart';
import 'package:cybear_jinni/infrastructure/objects/enums.dart';

class FireStoreClass {
  String path = '/SmartHomes/GuyHome/Devices/Lights/';
  String restOfPath = '/DevicesInTheRoom/';
  String deviceName = 'Stairs and Storage';

  Future<String> changeToOppositeSwitchState(
      String roomName, String smartInstanceName) async {
    final String fullPath = createDocumentFullPath(roomName);

    FirebaseFirestore.instance.doc(fullPath).get().then((DocumentSnapshot ds) {
      FirebaseFirestore.instance.doc(fullPath).update({
        smartInstanceName:
            ((ds.data() as Map<String, dynamic>)[smartInstanceName] ==
                true.toString())
      });
    });
    return getDeviceStatus(roomName, smartInstanceName);
  }

  Future<String> changeSwitchState(
      String roomName, String smartInstanceName, bool value) async {
    final String fullPath = createDocumentFullPath(roomName);

    FirebaseFirestore.instance.doc(fullPath).update({smartInstanceName: value});

    return getDeviceStatus(roomName, smartInstanceName);
  }

  Future<String> getDeviceStatus(
      String roomName, String smartInstanceName) async {
    final String fullPath = createDocumentFullPath(roomName);

    final DocumentSnapshot documentSnapshot =
        await FirebaseFirestore.instance.doc(fullPath).get();

    return (documentSnapshot.data() as Map<String, dynamic>)[smartInstanceName]
        .toString();
  }

  String createDocumentFullPath(String roomName) {
    return path;
//    return path + roomName + restOfPath + deviceName;
  }

  Future<String> changeBlindsState(String roomName, String smartInstanceName,
      DeviceActions deviceAction) async {
    final String fullPath = createDocumentFullPath(roomName);

    FirebaseFirestore.instance.doc(fullPath).update(
        {smartInstanceName: EnumHelper.deviceActionToString(deviceAction)});

    return getDeviceStatus(roomName, smartInstanceName);
  }
}
