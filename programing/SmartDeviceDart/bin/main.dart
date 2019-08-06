
import 'shered/serverProtoAsDart/smartServer.dart';
import 'smart_device/smart_device_manager.dart';

main(List<String> arguments) async {
  print('Device is now ON');
  SmartServer a = SmartServer();
  a.startListen();
//  SmartDeviceMain();
}