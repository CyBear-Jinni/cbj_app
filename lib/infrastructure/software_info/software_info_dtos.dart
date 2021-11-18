import 'package:cybear_jinni/domain/software_info/software_info_entity.dart';
import 'package:cybear_jinni/domain/software_info/software_info_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'software_info_dtos.freezed.dart';
part 'software_info_dtos.g.dart';

@freezed
abstract class SoftwareInfoDtos implements _$SoftwareInfoDtos {
  factory SoftwareInfoDtos({
    // @JsonKey(ignore: true)
    required String domainName,
    // required ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _SoftwareInfoDtos;

  SoftwareInfoDtos._();

  @override
  final String deviceDtoClassInstance = (SoftwareInfoDtos).toString();

  factory SoftwareInfoDtos.fromDomain(SoftwareInfoEntity remotePipesDE) {
    return SoftwareInfoDtos(
      domainName: remotePipesDE.domainName!.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory SoftwareInfoDtos.fromJson(Map<String, dynamic> json) =>
      _$SoftwareInfoDtosFromJson(json);

  SoftwareInfoEntity toDomain() {
    return SoftwareInfoEntity(
      domainName: SoftwareInfoDomain(domainName),
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
