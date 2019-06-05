import 'dart:io';
import 'package:firebase/firebase_io.dart';
import 'package:SmartDeviceDart/SmartDeviceDart.dart' as SmartDeviceDart;

main(List<String> arguments) {

  print('Hello world: ${SmartDeviceDart.calculate()}!');
  linuxCommand();
}


Future dataBase() async {


}


void linuxCommand() async {
  await Process.run('gpio', ['mode', '7', 'out']).then((ProcessResult result){
    print(result.stdout);
  });
  await Process.run('gpio', ['write', '7', '1']).then((ProcessResult result){
    print(result.stdout);
  });
  print('I am done here');

}