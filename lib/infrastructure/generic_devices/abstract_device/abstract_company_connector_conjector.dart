import 'package:cybear_jinni/domain/generic_devices/abstract_device/device_entity_abstract.dart';

abstract class AbstractCompanyConnectorConjector {
  /// Stores all devices for the each vendor, devices will be stored as the
  /// vendor implementation and not as generic devices
  ///
  /// key is entityUniqueId so that it can both use it quickly to not add the
  /// same device twice and to manage requests of actions from the app since
  /// the action already arrives with entityUniqueId value
  static Map<String, DeviceEntityAbstract> companyDevices = {};

  /// Will set up device for this vendor into the connector conjecture,
  /// will be called for each saved device of this vendor
  Future<void> setUpDeviceFromDb(DeviceEntityAbstract deviceEntity);
}
