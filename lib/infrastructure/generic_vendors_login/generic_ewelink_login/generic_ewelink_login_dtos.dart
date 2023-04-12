import 'package:cybear_jinni/domain/vendors/ewelink_login/generic_ewelink_login_entity.dart';
import 'package:cybear_jinni/domain/vendors/ewelink_login/generic_ewelink_login_value_objects.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/login_entity_abstract.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:cybear_jinni/infrastructure/generic_vendors_login/generic_login_abstract/login_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_ewelink_login_dtos.freezed.dart';
part 'generic_ewelink_login_dtos.g.dart';

@freezed
abstract class GenericEwelinkLoginDtos
    implements _$GenericEwelinkLoginDtos, LoginEntityDtoAbstract {
  factory GenericEwelinkLoginDtos({
    // @JsonKey(ignore: true)
    required String? senderUniqueId,
    required String? loginVendor,
    required String? ewelinkAccountEmail,
    required String? ewelinkAccountPass,

    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _GenericEwelinkLoginDtos;

  GenericEwelinkLoginDtos._();

  factory GenericEwelinkLoginDtos.fromDomain(
    GenericEwelinkLoginDE genericEwelinkDE,
  ) {
    return GenericEwelinkLoginDtos(
      senderUniqueId: genericEwelinkDE.senderUniqueId.getOrCrash(),
      loginVendor: genericEwelinkDE.loginVendor.getOrCrash(),
      ewelinkAccountEmail: genericEwelinkDE.ewelinkAccountEmail.getOrCrash(),
      ewelinkAccountPass: genericEwelinkDE.ewelinkAccountPass.getOrCrash(),
    );
  }

  factory GenericEwelinkLoginDtos.fromJson(Map<String, dynamic> json) =>
      _$GenericEwelinkLoginDtosFromJson(json);

  @override
  final String loginDtoClassInstance = (GenericEwelinkLoginDtos).toString();

  @override
  LoginEntityAbstract toDomain() {
    return GenericEwelinkLoginDE(
      senderUniqueId: CoreLoginSenderId.fromUniqueString(senderUniqueId),
      ewelinkAccountEmail: GenericEwelinkAccountEmail(ewelinkAccountEmail),
      ewelinkAccountPass: GenericEwelinkAccountPass(ewelinkAccountPass),
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
