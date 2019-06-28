// function to start python script inside the path (snap location)
import 'dart:io';

void PinOn(int pinNumber) async {
//  await Process.start('python3', [Pythons.pythonFilesLocation + '/on.py'])
//      .then((process) {
//    stdout.addStream(process.stdout);
//    stderr.addStream(process.stderr);
//  });
  List<String> pythonCommends = new List();
  pythonCommends.add('-c');
  pythonCommends.add('import RPi.GPIO as GPIO; pin = ' +
      pinNumber.toString() +
      '; GPIO.setmode(GPIO.BOARD); GPIO.setup(pin, GPIO.OUT); GPIO.output(pin, GPIO.HIGH); exit();');
  await Process.start('python3', pythonCommends).then((process) async {});
}

void pinOff(int pinNumber) async {
//  await Process.start('python3', [Pythons.pythonFilesLocation + '/off.py'])
//      .then((process) {
//    stdout.addStream(process.stdout);
//    stderr.addStream(process.stderr);
//  });
  List<String> pythonCommends = new List();
  pythonCommends.add('-c');
  pythonCommends.add('import RPi.GPIO as GPIO; pin = ' +
      pinNumber.toString() +
      '; GPIO.setmode(GPIO.BOARD); GPIO.setup(pin, GPIO.OUT); GPIO.output(pin, GPIO.LOW); exit();');
  await Process.start('python3', pythonCommends).then((process) async {});
}
