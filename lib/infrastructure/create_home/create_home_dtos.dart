import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybear_jinni/domain/create_home/create_home_entity.dart';
import 'package:cybear_jinni/domain/create_home/create_home_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_home_dtos.freezed.dart';
part 'create_home_dtos.g.dart';

@freezed
abstract class CreateHomeDtos implements _$CreateHomeDtos {
  const factory CreateHomeDtos({
    @JsonKey(ignore: true) String? id,
    @JsonKey(ignore: true) String? name,
    required String homeDevicesUserId,
    required String homeDevicesUserEmail,
    required String homeDevicesUserPassword,
    // required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _CreateHomeDtos;

  const CreateHomeDtos._();

  factory CreateHomeDtos.fromJson(Map<String, dynamic> json) =>
      _$CreateHomeDtosFromJson(json);

  factory CreateHomeDtos.fromFirestore(DocumentSnapshot? doc) {
    return CreateHomeDtos.fromJson(doc!.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }

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
