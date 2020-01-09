import 'package:cloud_firestore/cloud_firestore.dart';


class FireStoreClass {
  FireStoreClass() {
    Firestore.instance
        .collection('smartDevices')
        .document('guyRoom')
        .get()
        .then((DocumentSnapshot ds) {
      Firestore.instance
          .collection('smartDevices')
          .document("guyRoom")
          .setData({'ceilingLamp': !ds.data["ceilingLamp"]});
    });
  }
}
