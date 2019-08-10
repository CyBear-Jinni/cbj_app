import 'dart:io';
import '../../smart_device/smart_device_objects/abstract_smart_devices/smart_device_base_abstract.dart';
import '../enums.dart';

class ButtonObject{
  SmartDeviceBaseAbstract smartDevice;

  ButtonObject(this.smartDevice);

  void buttonPressed() async {
    int buttonPinNumber = 12;
    List<String> pythonCommends = List();
    pythonCommends.add('-c');
    pythonCommends.add('''
import RPi.GPIO as GPIO
import time
buttonPinNumber = int(''' +
        buttonPinNumber.toString() +
        ''')
GPIO.setmode(GPIO.BOARD)
GPIO.setup(buttonPinNumber, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)

try:
    while True:
         button_state = GPIO.input(buttonPinNumber)
         if button_state:
             print('Button Pressed...')
             time.sleep(0.2)
             exit()
         else:
             time.sleep(0.13)
except:
    GPIO.cleanup()
''');
    while (true) {
      await Process.start('python3', pythonCommends).then((process) async {
        await process.exitCode.then((exitCode) {
          print('exit code: $exitCode');
          if (smartDevice.onOff) {
            smartDevice.WishInBaseClass(WishEnum.SOff);
          } else {
            smartDevice.WishInBaseClass(WishEnum.SOn);
          }
        });
      }).catchError((handleError) {
        print(handleError.toString());
      });
      print('Done');
    }
  }

}