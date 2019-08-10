

import '../../smart_device/smart_device_objects/abstract_smart_devices/smart_device_base_abstract.dart';
import '../enums.dart';
import 'data_base_controller.dart';

class CloudManager{
  String dataPath = "smartDevices/guyRoom";
  SmartDeviceBaseAbstract smartDevice;

  CloudManager(this.smartDevice);


  // Listen to changes in the database for this device
  void listenToDataBase(){
    DataBaseController dataBaseController = DataBaseController();
    dataBaseController.listenToChangeOfDataInPath(dataPath).listen((onData) =>
        onData.listen((data2) => data2.listen((document) async { String value = await dataBaseController.getValueOfLamp(document, "ceilingLamp");
        if (value == 'true'){
          print('Ok');
          String smartDeviceResponse =
          await smartDevice.WishInBaseClass(WishEnum.SOn);
          print(smartDeviceResponse);

        }
        else{
          print('Go home');
          String smartDeviceResponse =
          await smartDevice.WishInBaseClass(WishEnum.SOff);
          print(smartDeviceResponse);
        }
        })));
  }
}