// function to start python script inside the path (snap location)
import 'dart:io';

import 'pythons.dart';

void PinOn(int pinNumber) async {
  await Process.start('python3', [Pythons.pythonFilesLocation + '/on.py'])
      .then((process) {
//    stdout.addStream(process.stdout);
//    stderr.addStream(process.stderr);
  });
//  List<String> pythonCommends = new List();
//  pythonCommends.add('-c');
//  pythonCommends.add('import RPi.GPIO as GPIO');
//  pythonCommends.add('pin = 7');
//  pythonCommends.add('GPIO.setmode(GPIO.BOARD)');   // doesn't work missing root permissions
//  pythonCommends.add('GPIO.setup(pin, GPIO.OUT)');
//  pythonCommends.add('GPIO.output(pin, GPIO.HIGH)');
//  pythonCommends.add('exit()');
//  await Process.start('python3', pythonCommends).then((process) async {
//    await stdout.addStream(process.stdout);
//    await stderr.addStream(process.stderr);
//  });
}

void pinOff(int pinNumber) async {
  await Process.start('python3', [Pythons.pythonFilesLocation + '/off.py'])
      .then((process) {
//    stdout.addStream(process.stdout);
//    stderr.addStream(process.stderr);
  });
//  List<String> pythonCommends = new List();
//  pythonCommends.add('-c');
//  pythonCommends.add('import RPi.GPIO as GPIO');
//  pythonCommends.add('pin = 7');
//  pythonCommends.add('GPIO.setmode(GPIO.BOARD)');  // doesn't work missing root permissions
//  pythonCommends.add('GPIO.setup(pin, GPIO.OUT)');
//  pythonCommends.add('GPIO.output(pin, GPIO.LOW)');
//  pythonCommends.add('exit()');
//  await Process.start('python3', pythonCommends).then((process) async {
//    await stdout.addStream(process.stdout);
//    await stderr.addStream(process.stderr);
//  });
}
