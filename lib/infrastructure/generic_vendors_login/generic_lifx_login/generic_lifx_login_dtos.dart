import 'package:cybear_jinni/domain/vendors_login/lifx_login/generic_lifx_entity.dart';
import 'package:cybear_jinni/domain/vendors_login/login_abstract/login_entity_abstract.dart';
import 'package:cybear_jinni/domain/vendors_login/login_abstract/value_login_objects_core.dart';
import 'package:cybear_jinni/infrastructure/generic_vendors_login/generic_login_abstract/login_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_lifx_login_dtos.freezed.dart';
part 'generic_lifx_login_dtos.g.dart';

@freezed
abstract class GenericLifxLoginDtos
    implements _$GenericLifxLoginDtos, LoginEntityDtoAbstract {
  factory GenericLifxLoginDtos({
    // @JsonKey(ignore: true)
    required String? senderUniqueId,
    required String? loginVendor,
    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _GenericLifxLoginDtos;

  GenericLifxLoginDtos._();

  @override
  final String loginDtoClassInstance = (GenericLifxLoginDtos).toString();

  factory GenericLifxLoginDtos.fromDomain(GenericLifxDE genericLifxDE) {
    return GenericLifxLoginDtos(
      senderUniqueId: genericLifxDE.senderUniqueId.getOrCrash(),
      loginVendor: genericLifxDE.loginVendor.getOrCrash(),

      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory GenericLifxLoginDtos.fromJson(Map<String, dynamic> json) =>
      _$GenericLifxLoginDtosFromJson(json);

  LoginEntityAbstract toDomain() {
    return GenericLifxDE(
      senderUniqueId: CoreLoginSenderId.fromUniqueString(senderUniqueId),
      loginVendor: CoreLoginVendor(loginVendor),
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
