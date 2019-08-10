import '../shered/data_base/cloud_manager.dart';
import '../shered/device_information.dart';
import '../shered/manage_physical_components/button_object.dart';
import '../shered/server_proto_as_dart/smart_server.dart';
import 'smart_device_objects/abstract_smart_devices/smart_device_base_abstract.dart';
import 'smart_device_objects/dinamic_devices/dynamic_light_object.dart';
import 'smart_device_objects/simple_devices/light_object.dart';
import 'smart_device_objects/static_devices/blinds_object.dart';

class SmartDeviceMain {
  List<SmartDeviceBaseAbstract> smartDevicesList;

   SmartDeviceMain() {
    print("Smart device is activaited");
    smartDevicesList = List<SmartDeviceBaseAbstract>();

    SmartDeviceMainAsync();
  }

  Future SmartDeviceMainAsync() async {
    print(await getIps());
    await setAllDevices(); // Setting up all the device from the memory

    listenToDataBase(); // Listen to changes in the database for this device

    waitForConnection(); // Start listen for in incoming connections from the local internet (LAN/Wifi)

    buttonPressed(); // Listen for button press
  }

  // TODO: Pull the saved devices into the app variables
  // Setting all the devices from saved data
  void setAllDevices() async {
//    await new Future.delayed(const Duration(seconds: 10), () => "1");

    await smartDevicesList
        .add(LightObject("30:23:a2:G3:34", "Guy silling light"));
    smartDevicesList[0].deviceInformation =
        LocalDevice('mac Adress', 'Guy lamp');
    await smartDevicesList.add(Blinds("30:23:a2:G3:34", "Guy bed light"));
    await smartDevicesList
        .add(DynamicLight("30:23:a2:G3:34", "Guy electronic table light"));
  }


  // Listen to changes in the database for this device
  void listenToDataBase(){
    CloudManager cloudManager = CloudManager(smartDevicesList[0]);
    cloudManager.listenToDataBase();
  }

  // Listening to port and deciding what to do with the response
  void waitForConnection()  {
    SmartServer smartServer = SmartServer(smartDevicesList);
    smartServer.startListen();
  }

  void buttonPressed() async {
    ButtonObject buttonObject = ButtonObject(smartDevicesList[0]);
    buttonObject.buttonPressed();
  }
}
