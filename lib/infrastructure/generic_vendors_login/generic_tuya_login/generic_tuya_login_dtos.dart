import 'package:cybear_jinni/domain/vendors/login_abstract/login_entity_abstract.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:cybear_jinni/domain/vendors/tuya_login/generic_tuya_login_entity.dart';
import 'package:cybear_jinni/domain/vendors/tuya_login/generic_tuya_login_value_objects.dart';
import 'package:cybear_jinni/infrastructure/generic_vendors_login/generic_login_abstract/login_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_tuya_login_dtos.freezed.dart';
part 'generic_tuya_login_dtos.g.dart';

@freezed
abstract class GenericTuyaLoginDtos
    implements _$GenericTuyaLoginDtos, LoginEntityDtoAbstract {
  factory GenericTuyaLoginDtos({
    // @JsonKey(ignore: true)
    required String? senderUniqueId,
    required String? loginVendor,
    required String? userName,
    required String? userPassword,
    required String? countryCode,
    required String? bizType,
    required String? region,
    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _GenericTuyaLoginDtos;

  GenericTuyaLoginDtos._();

  factory GenericTuyaLoginDtos.fromDomain(GenericTuyaLoginDE genericTuyaDE) {
    return GenericTuyaLoginDtos(
      senderUniqueId: genericTuyaDE.senderUniqueId.getOrCrash(),
      loginVendor: genericTuyaDE.loginVendor.getOrCrash(),
      userName: genericTuyaDE.tuyaUserName.getOrCrash(),
      userPassword: genericTuyaDE.tuyaUserPassword.getOrCrash(),
      countryCode: genericTuyaDE.tuyaCountryCode.getOrCrash(),
      bizType: genericTuyaDE.tuyaBizType.getOrCrash(),
      region: genericTuyaDE.tuyaRegion.getOrCrash(),

      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory GenericTuyaLoginDtos.fromJson(Map<String, dynamic> json) =>
      _$GenericTuyaLoginDtosFromJson(json);

  @override
  final String loginDtoClassInstance = (GenericTuyaLoginDtos).toString();

  @override
  LoginEntityAbstract toDomain() {
    return GenericTuyaLoginDE(
      senderUniqueId: CoreLoginSenderId.fromUniqueString(senderUniqueId),
      loginVendor: CoreLoginVendor(loginVendor),
      tuyaUserName: GenericTuyaLoginUserName(userName),
      tuyaUserPassword: GenericTuyaLoginUserPassword(userPassword),
      tuyaCountryCode: GenericTuyaLoginCountryCode(countryCode),
      tuyaBizType: GenericTuyaLoginBizType(bizType),
      tuyaRegion: GenericTuyaLoginRegion(region),
    );
  }
}

// class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
//   const ServerTimestampConverter();
//
//   @override
//   FieldValue fromJson(Object json) {
//     return FieldValue.serverTimestamp();
//   }
//
//   @override
//   Object toJson(FieldValue fieldValue) => fieldValue;
// }
