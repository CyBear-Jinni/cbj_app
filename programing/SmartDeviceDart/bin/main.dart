import 'package:SmartDeviceDart/SmartDeviceDart.dart' as SmartDeviceDart;

import 'package:firebase/firebase_io.dart';

main(List<String> arguments) {
  print('Hello world: ${SmartDeviceDart.calculate()}!');

  dataBase();

}

Future dataBase() async {

  var credential = ''; // Retrieve auth credential
  var fbClient = new FirebaseClient(credential); // FirebaseClient.anonymous() is also available

  var path = ''; // Full path to your database location with .json appended

  // GET
  var response = await fbClient.get(path);

  // DELETE
//  await fbClient.delete(path);

}