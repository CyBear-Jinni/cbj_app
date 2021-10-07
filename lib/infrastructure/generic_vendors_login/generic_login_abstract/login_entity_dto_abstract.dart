import 'package:cybear_jinni/domain/vendors/login_abstract/login_entity_abstract.dart';
import 'package:cybear_jinni/infrastructure/generic_vendors_login/generic_lifx_login/generic_lifx_login_dtos.dart';

class LoginEntityDtoAbstract {
  LoginEntityDtoAbstract();

  factory LoginEntityDtoAbstract.fromDomain(
      LoginEntityAbstract loginEntityDtoAbstract) {
    print('LoginEntityDtoAbstract.fromDomain');
    return LoginEntityDtoAbstract();
  }

  factory LoginEntityDtoAbstract.fromJson(Map<String, dynamic> json) {
    LoginEntityDtoAbstract loginEntityDtoAbstract = LoginEntityDtoAbstract();
    final String jsonLoginDtoClass = json['loginDtoClass'].toString();

    if (jsonLoginDtoClass == (GenericLifxLoginDtos).toString()) {
      loginEntityDtoAbstract = GenericLifxLoginDtos.fromJson(json);
    } else {
      throw 'DtoClassTypeDoesNotExist';
    }
    return loginEntityDtoAbstract;
  }

  final String loginDtoClassInstance = (LoginEntityDtoAbstract).toString();

  Map<String, dynamic> toJson() {
    print('LoginEntityDtoAbstract to Json');
    return {};
  }

  LoginEntityAbstract toDomain() {
    print('ToDomain');
    return LoginEntityEmpty();
  }
}
