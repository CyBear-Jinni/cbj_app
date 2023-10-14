import 'dart:convert';

import 'package:cbj_integrations_controller/domain/vendors/login_abstract/login_entity_abstract.dart';
import 'package:cbj_integrations_controller/infrastructure/generic_vendors_login/generic_login_abstract/login_entity_dto_abstract.dart';

class VendorHelper {
  /// Dto to json
  static Map<String, dynamic> convertDtoToJson(
    LoginEntityDtoAbstract loginEntityDto,
  ) {
    return loginEntityDto.toJson();
  }

  /// json to Dto
  static LoginEntityDtoAbstract convertJsonToDto(Map<String, dynamic> json) {
    return LoginEntityDtoAbstract.fromJson(json);
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
  static LoginEntityDtoAbstract convertDomainToDto(
    LoginEntityAbstract loginEntity,
  ) {
    return loginEntity.toInfrastructure();
  }

  /// Dto to login entity
  static LoginEntityAbstract convertDtoToDomain(
    LoginEntityDtoAbstract loginEntityDto,
  ) {
    return loginEntityDto.toDomain();
  }

  // Extras methods

  static String convertDtoToJsonString(
    LoginEntityDtoAbstract loginEntityDto,
  ) {
    return convertJsonToJsonString(convertDtoToJson(loginEntityDto));
  }

  static LoginEntityAbstract convertJsonStringToDomain(String jsonString) {
    return convertDtoToDomain(
      convertJsonToDto(convertJsonStringToJson(jsonString)),
    );
  }

  static String convertDomainToJsonString(LoginEntityAbstract loginEntity) {
    return convertJsonToJsonString(
      convertDtoToJson(convertDomainToDto(loginEntity)),
    );
  }
}
