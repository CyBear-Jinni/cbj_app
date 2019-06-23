import 'shered/pythons.dart';
import 'smartDevice/smartDeviceManager.dart';

main(List<String> arguments) {
  print('Device is now ON');
  try {
    Pythons.pythonFilesLocation = arguments[0];
  } catch (e) {
    Pythons.pythonFilesLocation = '..';
  }
  SmartDeviceMain();
}
