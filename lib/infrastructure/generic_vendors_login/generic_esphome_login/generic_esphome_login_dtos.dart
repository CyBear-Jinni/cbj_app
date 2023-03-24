import 'package:cybear_jinni/domain/vendors/esphome_login/generic_esphome_login_entity.dart';
import 'package:cybear_jinni/domain/vendors/esphome_login/generic_esphome_login_value_objects.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/login_entity_abstract.dart';
import 'package:cybear_jinni/domain/vendors/login_abstract/value_login_objects_core.dart';
import 'package:cybear_jinni/infrastructure/generic_vendors_login/generic_login_abstract/login_entity_dto_abstract.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_esphome_login_dtos.freezed.dart';
part 'generic_esphome_login_dtos.g.dart';

@freezed
abstract class GenericEspHomeLoginDtos
    implements _$GenericEspHomeLoginDtos, LoginEntityDtoAbstract {
  factory GenericEspHomeLoginDtos({
    // @JsonKey(ignore: true)
    required String? senderUniqueId,
    required String? loginVendor,
    required String? esphomeDevicePass,
    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _GenericEspHomeLoginDtos;

  GenericEspHomeLoginDtos._();

  factory GenericEspHomeLoginDtos.fromDomain(
    GenericEspHomeLoginDE genericEspHomeDE,
  ) {
    return GenericEspHomeLoginDtos(
      senderUniqueId: genericEspHomeDE.senderUniqueId.getOrCrash(),
      loginVendor: genericEspHomeDE.loginVendor.getOrCrash(),
      esphomeDevicePass: genericEspHomeDE.espHomeDevicePass.getOrCrash(),

      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory GenericEspHomeLoginDtos.fromJson(Map<String, dynamic> json) =>
      _$GenericEspHomeLoginDtosFromJson(json);

  @override
  final String loginDtoClassInstance = (GenericEspHomeLoginDtos).toString();

  @override
  LoginEntityAbstract toDomain() {
    return GenericEspHomeLoginDE(
      senderUniqueId: CoreLoginSenderId.fromUniqueString(senderUniqueId),
      espHomeDevicePass: GenericEspHomeDeviceLoginApiPass(esphomeDevicePass),
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
