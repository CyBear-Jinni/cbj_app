import 'package:cbj_integrations_controller/infrastructure/generic_devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/infrastructure/phone_as_hub/phone_as_hub.dart';

abstract interface class IPhoneAsHub {
  static IPhoneAsHub? _instance;

  static IPhoneAsHub get instance {
    return _instance ??= PhoneAsHub();
  }

  Future searchDevices();

  Future<Map<String, DeviceEntityAbstract>> get getAllDevices;

  void startListen();
  Future dispose();
}
