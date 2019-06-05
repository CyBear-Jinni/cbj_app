import 'dart:io';
import 'package:firebase/firebase_io.dart';
import 'package:SmartDeviceDart/SmartDeviceDart.dart' as SmartDeviceDart;

main(List<String> arguments) {

  print('Hello world: ${SmartDeviceDart.calculate()}!');
  dataBase();

  linuxCommand();
}


Future dataBase() async {
  var fbClient = new FirebaseClient.anonymous();
  String auth = 'vA8JV5FBKFUTiJNnODjc9s1V9y0N0yJvH2ST0WG0';
  var path = "https://***REMOVED***.firebaseio.com/users/dani/name.json?auth=" + auth;
  var response = await fbClient.get(path);
  print(response);
  // Delete field
//  await fbClient.delete(path);

}


void linuxCommand() async {
  await Process.run('gpio', ['mode', '7', 'out']).then((ProcessResult result){
    print(result.stdout);
  }).catchError(errorPrint);
  await Process.run('gpio', ['write', '7', '1']).then((ProcessResult result){
    print(result.stdout);
  }).catchError(errorPrint);
  print('I am done here');

}
void errorPrint(Exception e){
  print('Error is: ' + e.toString());
}