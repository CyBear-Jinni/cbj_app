
//import 'package:firebase/firebase_io.dart';
//import 'package:SmartDeviceDart/SmartDeviceDart.dart' as SmartDeviceDart;


import 'dart:io';

import 'smartDevice/SmartDeviceMain.dart';

String firstArg;
main(List<String> arguments) {
  print('Started');
  SmartDeviceMain();

}



//Future<void> dataBase() async {
//  var fbClient = new FirebaseClient.anonymous();
//  String auth = 'vA8JV5FBKFUTiJNnODjc9s1V9y0N0yJvH2ST0WG0';
//  var path = "https://***REMOVED***.firebaseio.com/users/dani/name.json?auth=" + auth;
//  var response = await fbClient.get(path);
//  print(response);
//  // Delete field
////  await fbClient.delete(path);
//
//}


