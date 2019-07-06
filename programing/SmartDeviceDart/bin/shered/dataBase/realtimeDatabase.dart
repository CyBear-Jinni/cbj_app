import 'package:firebase/firebase_io.dart';

class RealtimeDatabase {
  String auth = 'vA8JV5FBKFUTiJNnODjc9s1V9y0N0yJvH2ST0WG0';
  String urlToDataBase = 'https://***REMOVED***.firebaseio.com/';

  // 'users/dani/name' as input
  Future<String> getData(String path) async {
    FirebaseClient fbClient = new FirebaseClient.anonymous();
    String fullPath = urlToDataBase + path + '.json?auth=' + auth;
    dynamic response = await fbClient.get(fullPath);
    return response;
  }
}
