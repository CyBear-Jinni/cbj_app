import 'dart:io';

main(List<String> arguments) {
  print('Device is now ON');
  commandP(arguments[0]);
  //SmartDeviceMain();
}

// function to start python script inside the path (snap location)
void commandP(String path) async {
  await Process.start('python3', [path + '/on.py']).then((process) {
    stdout.addStream(process.stdout);
    stderr.addStream(process.stderr);
  });
}
