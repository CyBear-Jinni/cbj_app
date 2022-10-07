import 'package:cybear_jinni/domain/create_home/create_home_entity.dart';
import 'package:cybear_jinni/domain/create_home/create_home_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_home_dtos.freezed.dart';
part 'create_home_dtos.g.dart';

@freezed
abstract class CreateHomeDtos implements _$CreateHomeDtos {
  const factory CreateHomeDtos({
    required String homeDevicesUserId,
    required String homeDevicesUserEmail,
    required String homeDevicesUserPassword,
    @JsonKey(ignore: true) String? id,
    @JsonKey(ignore: true) String? name,
    // required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _CreateHomeDtos;

  const CreateHomeDtos._();

  factory CreateHomeDtos.fromJson(Map<String, dynamic> json) =>
      _$CreateHomeDtosFromJson(json);

  factory CreateHomeDtos.fromDomain(CreateHomeEntity createHomeEntity) {
    return CreateHomeDtos(
      homeDevicesUserId: createHomeEntity.homeDevicesUserId!.getOrCrash(),
      homeDevicesUserEmail: createHomeEntity.homeDevicesUserEmail!.getOrCrash(),
      homeDevicesUserPassword:
          createHomeEntity.homeDevicesUserPassword!.getOrCrash(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  CreateHomeEntity toDomain() {
    return CreateHomeEntity(
      name: HomeName(' '),
      id: HomeUniqueId.fromUniqueString(' '),
      homeDevicesUserId: HomeDevicesUserId(),
      homeDevicesUserEmail: HomeDevicesUserEmail(homeDevicesUserEmail),
      homeDevicesUserPassword:
          HomeDevicesUserPassword.fromUniqueString(homeDevicesUserPassword),
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
