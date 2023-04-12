import 'package:cybear_jinni/domain/vendors/login_abstract/login_entity_abstract.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:cybear_jinni/domain/vendors/xiaomi_mi_login/generic_xiaomi_mi_login_entity.dart';
import 'package:cybear_jinni/domain/vendors/xiaomi_mi_login/generic_xiaomi_mi_login_value_objects.dart';
import 'package:cybear_jinni/infrastructure/generic_vendors_login/generic_login_abstract/login_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_xiaomi_mi_login_dtos.freezed.dart';
part 'generic_xiaomi_mi_login_dtos.g.dart';

@freezed
abstract class GenericXiaomiMiLoginDtos
    implements _$GenericXiaomiMiLoginDtos, LoginEntityDtoAbstract {
  factory GenericXiaomiMiLoginDtos({
    // @JsonKey(ignore: true)
    required String? senderUniqueId,
    required String? loginVendor,
    required String? xiaomiMiAccountEmail,
    required String? xiaomiMiAccountPass,

    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _GenericXiaomiMiLoginDtos;

  GenericXiaomiMiLoginDtos._();

  factory GenericXiaomiMiLoginDtos.fromDomain(
    GenericXiaomiMiLoginDE genericXiaomiMiDE,
  ) {
    return GenericXiaomiMiLoginDtos(
      senderUniqueId: genericXiaomiMiDE.senderUniqueId.getOrCrash(),
      loginVendor: genericXiaomiMiDE.loginVendor.getOrCrash(),
      xiaomiMiAccountEmail: genericXiaomiMiDE.xiaomiMiAccountEmail.getOrCrash(),
      xiaomiMiAccountPass: genericXiaomiMiDE.xiaomiMiAccountPass.getOrCrash(),
    );
  }

  factory GenericXiaomiMiLoginDtos.fromJson(Map<String, dynamic> json) =>
      _$GenericXiaomiMiLoginDtosFromJson(json);

  @override
  final String loginDtoClassInstance = (GenericXiaomiMiLoginDtos).toString();

  @override
  LoginEntityAbstract toDomain() {
    return GenericXiaomiMiLoginDE(
      senderUniqueId: CoreLoginSenderId.fromUniqueString(senderUniqueId),
      xiaomiMiAccountEmail: GenericXiaomiMiAccountEmail(xiaomiMiAccountEmail),
      xiaomiMiAccountPass: GenericXiaomiMiAccountPass(xiaomiMiAccountPass),
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
