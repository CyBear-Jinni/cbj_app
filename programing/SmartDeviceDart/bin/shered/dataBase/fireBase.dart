import 'package:firebase/firebase_io.dart';

class FireBase {
  Future<void> dataBase() async {
    FirebaseClient fbClient = new FirebaseClient.anonymous();
    String auth = 'vA8JV5FBKFUTiJNnODjc9s1V9y0N0yJvH2ST0WG0';
    String path =
        "https://***REMOVED***.firebaseio.com/users/dani/name.json?auth=" +
            auth;
    dynamic response = await fbClient.get(path);
    print(response);
    // Delete field
//  await fbClient.delete(path);
  }
}
