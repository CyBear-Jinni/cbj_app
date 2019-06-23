import 'shered/pythons.dart';
import 'smartDevice/smartDeviceManager.dart';

main(List<String> arguments) {
  print('Device is now ON');
  Pythons.pythonFilesLocation = arguments[0];
  SmartDeviceMain();
}
