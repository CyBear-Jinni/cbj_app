import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/infrastructure/devices/device/device_dtos.dart';
import 'package:cybear_jinni/infrastructure/devices/esphome/esphome_dtos.dart';

class DeviceEntityDtoAbstract {
  DeviceEntityDtoAbstract();

  final String deviceDtoClassInstance = (DeviceEntityDtoAbstract).toString();

  factory DeviceEntityDtoAbstract.fromDomain() {
    print('DeviceEntityDtoAbstract.fromDomain');
    return DeviceEntityDtoAbstract();
  }

  factory DeviceEntityDtoAbstract.fromJson(Map<String, dynamic> json) {
    DeviceEntityDtoAbstract deviceEntityDtoAbstract = DeviceEntityDtoAbstract();
    final String jsonDeviceDtoClass = json['deviceDtoClass'].toString();

    if (jsonDeviceDtoClass == (DeviceDtos).toString()) {
      deviceEntityDtoAbstract = DeviceDtos.fromJson(json);
    } else if (jsonDeviceDtoClass == (EspHomeDtos).toString()) {
      deviceEntityDtoAbstract = EspHomeDtos.fromJson(json);
    } else {
      throw 'DtoClassTypeDoesNotExist';
    }
    return deviceEntityDtoAbstract;
  }

  Map<String, dynamic> toJson() {
    print('DeviceEntityDtoAbstract to Json');
    return {};
  }

  DeviceEntityAbstract toDomain() {
    print('ToDomain');
    return DeviceEntityAbstract();
  }
}
