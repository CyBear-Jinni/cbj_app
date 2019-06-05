import 'dart:io';
import 'package:firebase/firebase_io.dart';
import 'package:SmartDeviceDart/SmartDeviceDart.dart' as SmartDeviceDart;

main(List<String> arguments) {

  print('Hello world: ${SmartDeviceDart.calculate()}!');
  linuxCommand();
}


Future dataBase() async {


//  var credential = ''; // Retrieve auth credential
//  var fbClient = new FirebaseClient(); // FirebaseClient.anonymous() is also available
//
//  var path = ''; // Full path to your database location with .json appended
//
//  // GET
//  var response = await fbClient.get(path);
//
//  // DELETE
////  await fbClient.delete(path);


}

void linuxCommand() async{
  await Process.run('pwd', ['']).then((ProcessResult result){
    print(result.stdout);
  });

}