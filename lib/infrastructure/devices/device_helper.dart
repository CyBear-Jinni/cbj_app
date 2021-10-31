import 'dart:convert';

import 'package:cybear_jinni/domain/devices/abstract_device/device_entity_abstract.dart';
import 'package:cybear_jinni/infrastructure/generic_devices/abstract_device/device_entity_dto_abstract.dart';

class DeviceHelper {
  /// Dto to json
  static Map<String, dynamic> convertDtoToJson(
    DeviceEntityDtoAbstract deviceEntityDto,
  ) {
    return deviceEntityDto.toJson();
  }

  /// json to Dto
  static DeviceEntityDtoAbstract convertJsonToDto(Map<String, dynamic> json) {
    return DeviceEntityDtoAbstract.fromJson(json);
  }

  /// json to json string
  static String convertJsonToJsonString(Map<String, dynamic> json) {
    return jsonEncode(json);
  }

  /// string json to json
  static Map<String, dynamic> convertJsonStringToJson(String jsonString) {
    return jsonDecode(jsonString) as Map<String, dynamic>;
  }

  /// Device entity to dto
  static DeviceEntityDtoAbstract convertDomainToDto(
    DeviceEntityAbstract deviceEntity,
  ) {
    return deviceEntity.toInfrastructure();
  }

  /// Dto to device entity
  static DeviceEntityAbstract convertDtoToDomain(
    DeviceEntityDtoAbstract deviceEntityDto,
  ) {
    return deviceEntityDto.toDomain();
  }

  // Extras methods

  static String convertDtoToJsonString(
    DeviceEntityDtoAbstract deviceEntityDto,
  ) {
    return convertJsonToJsonString(convertDtoToJson(deviceEntityDto));
  }

  static DeviceEntityAbstract convertJsonStringToDomain(String jsonString) {
    return convertDtoToDomain(
      convertJsonToDto(convertJsonStringToJson(jsonString)),
    );
  }

  static String convertDomainToJsonString(DeviceEntityAbstract deviceEntity) {
    return convertJsonToJsonString(
      convertDtoToJson(convertDomainToDto(deviceEntity)),
    );
  }
}
