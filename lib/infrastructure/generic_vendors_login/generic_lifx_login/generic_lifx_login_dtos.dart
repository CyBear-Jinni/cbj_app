import 'package:cybear_jinni/domain/vendors/lifx_login/generic_lifx_login_entity.dart';
import 'package:cybear_jinni/domain/vendors/lifx_login/generic_lifx_login_value_objects.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/login_entity_abstract.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
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
    required String? lifxApiKey,
    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _GenericLifxLoginDtos;

  GenericLifxLoginDtos._();

  factory GenericLifxLoginDtos.fromDomain(GenericLifxLoginDE genericLifxDE) {
    return GenericLifxLoginDtos(
      senderUniqueId: genericLifxDE.senderUniqueId.getOrCrash(),
      loginVendor: genericLifxDE.loginVendor.getOrCrash(),
      lifxApiKey: genericLifxDE.lifxApiKey.getOrCrash(),

      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory GenericLifxLoginDtos.fromJson(Map<String, dynamic> json) =>
      _$GenericLifxLoginDtosFromJson(json);

  @override
  final String loginDtoClassInstance = (GenericLifxLoginDtos).toString();

  @override
  LoginEntityAbstract toDomain() {
    return GenericLifxLoginDE(
      senderUniqueId: CoreLoginSenderId.fromUniqueString(senderUniqueId),
      lifxApiKey: GenericLifxLoginApiKey(lifxApiKey),
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
