import 'package:cybear_jinni/domain/vendors/login_abstract/login_entity_abstract.dart';
import 'package:cybear_jinni/infrastructure/generic_vendors_login/generic_lifx_login/generic_lifx_login_dtos.dart';
import 'package:cybear_jinni/infrastructure/generic_vendors_login/generic_tuya_login/generic_tuya_login_dtos.dart';
import 'package:cybear_jinni/utils.dart';

class LoginEntityDtoAbstract {
  LoginEntityDtoAbstract();

  factory LoginEntityDtoAbstract.fromDomain(
    LoginEntityAbstract loginEntityDtoAbstract,
  ) {
    logger.v('LoginEntityDtoAbstract.fromDomain');
    return LoginEntityDtoAbstract();
  }

  factory LoginEntityDtoAbstract.fromJson(Map<String, dynamic> json) {
    LoginEntityDtoAbstract loginEntityDtoAbstract = LoginEntityDtoAbstract();
    final String jsonLoginDtoClass = json['loginDtoClass'].toString();

    if (jsonLoginDtoClass == (GenericLifxLoginDtos).toString()) {
      loginEntityDtoAbstract = GenericLifxLoginDtos.fromJson(json);
    } else if (jsonLoginDtoClass == (GenericTuyaLoginDtos).toString()) {
      loginEntityDtoAbstract = GenericTuyaLoginDtos.fromJson(json);
    } else {
      throw 'DtoClassTypeDoesNotExist';
    }
    return loginEntityDtoAbstract;
  }

  final String loginDtoClassInstance = (LoginEntityDtoAbstract).toString();

  Map<String, dynamic> toJson() {
    logger.v('LoginEntityDtoAbstract to Json');
    return {};
  }

  LoginEntityAbstract toDomain() {
    logger.v('ToDomain');
    return LoginEntityEmpty();
  }
}
