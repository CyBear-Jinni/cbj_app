import 'dart:io';

import '../shered/deviceInformation.dart';
import '../shered/enums.dart';
import '../shered/networkManager.dart';
import 'smartDeviceObjects/abstractSmartDevices/smartDeviceBaseAbstract.dart';
import 'smartDeviceObjects/dinamicDevices/dynamicLightObject.dart';
import 'smartDeviceObjects/simpleDevices/lightObject.dart';
import 'smartDeviceObjects/staticDevices/blindsObject.dart';

class SmartDeviceMain {
  List<SmartDeviceBaseAbstract> smartDevicesList;

  SmartDeviceMain() {
    print("Smart device is activaited");
    smartDevicesList = new List<SmartDeviceBaseAbstract>();
    SmartDeviceMainAsync();
  }

  Future SmartDeviceMainAsync() async {
    await setAllDevices(); // Setting up all the device from the memory

    waitForConnection(); // Start listen for in incoming connections from the internet

    buttonPressed(); // Listen for button press
  }

  // TODO: Pull the saved devices into the app variables
  // Setting all the devices from saved data
  void setAllDevices() async {
//    await new Future.delayed(const Duration(seconds: 10), () => "1");

    await smartDevicesList
        .add(new LightObject("30:23:a2:G3:34", "Guy silling light"));
//    smartDevicesList[0].deviceInformation =
//        new RemoteDevice('mac Address', 'Guy lamp', '10.0.0.21');
    smartDevicesList[0].deviceInformation =
        new LocalDevice('mac Adress', 'Guy lamp');
    await smartDevicesList.add(new Blinds("30:23:a2:G3:34", "Guy bed light"));
    await smartDevicesList
        .add(new DynamicLight("30:23:a2:G3:34", "Guy electronic table light"));
  }

  // Listening to port and getting deciding what to do with the response
  void waitForConnection() async {
    HttpServer server = await HttpServer.bind(InternetAddress.anyIPv6, 4141);
    print("Meybe listening at http://${await printIps()}:${server.port}");
    await for (HttpRequest req in server) {
      String smartDeviceResponse =
          await processTheResponse(req.uri.pathSegments);

      NetworkManager.SendResponse(req, smartDeviceResponse);
    }
    ;
  }

  // Process Response to device
  Future<String> processTheResponse(List<String> pathSegments) async {
    print('req' + pathSegments.toString());
    //    macAddress: The mac Address of the physical device unique per device
    //    deviceUniqueNumber: the unique number of the device on the same mac address, can be multiple unique numbers on the same physical device (macAddress)
    //    action: What the device need to do
    //    10.0.0.10:4141/macAddress/deviceUniqueNumber/action
    if (pathSegments.length < 3)
      return pathSegments.length.toString() + " is not enough parameter";
    else if (int.tryParse(pathSegments[1]) == null) {
      return 'Second parameter need to be number';
    }

    int deviceNumber = int.tryParse(pathSegments[1]);
    if (deviceNumber >= smartDevicesList.length) {
      return 'Device ${deviceNumber} is not exist';
    }

    String smartDeviceResponse =
        await smartDevicesList[deviceNumber].ExecuteWish(pathSegments[2]);

    return smartDeviceResponse;
  }

  void buttonPressed() async {
    int buttonPinNumber = 12;
    List<String> pythonCommends = new List();
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
          if (smartDevicesList[0].onOff) {
            smartDevicesList[0].WishInBaseClass(WishEnum.SOff);
          } else {
            smartDevicesList[0].WishInBaseClass(WishEnum.SOn);
          }
        });
      }).catchError((handleError) {
        print(handleError.toString());
      });
      print('Done');
    }
  }
}
