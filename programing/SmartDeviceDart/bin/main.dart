import 'dart:io';

import 'package:process_run/shell.dart';

main(List<String> arguments) {
  print('Device is now ON');
  command(arguments[0]);
  //SmartDeviceMain();
}

Future command(String path) async {
  var shell = Shell();

  List<ProcessResult> out = await shell.run('''
  ls
  python3 $path/on.py
  pwd
  ''');
  print('out');
  print(out);
  print('out2');
  print(out[0].stdout);
  print('out3');
  print(out[1].stdout);
}
