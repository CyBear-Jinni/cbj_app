import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:cybear_jinni/domain/user/user_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
abstract class UserDtos implements _$UserDtos {
  const UserDtos._();

  const factory UserDtos({
    @JsonKey(ignore: true) String? id,
    required String email,
    required String name,
    String? firstName,
    String? lastName,
  }) = _UserDtos;

  factory UserDtos.fromDomain(UserEntity userEntity) {
    return UserDtos(
      id: userEntity.id!.getOrCrash(),
      email: userEntity.email!.getOrCrash(),
      name: userEntity.name!.getOrCrash(),
      firstName: userEntity.firstName!.getOrCrash(),
      lastName: userEntity.lastName!.getOrCrash(),
    );
  }

  UserEntity toDomain() {
    return UserEntity(
      id: UserUniqueId.fromUniqueString(id),
      email: UserEmail(email),
      name: UserName(name),
      firstName: UserFirstName(firstName!),
      lastName: UserLastName(lastName!),
    );
  }

  factory UserDtos.fromJson(Map<String, dynamic> json) =>
      _$UserDtosFromJson(json);

  factory UserDtos.fromFirestore(DocumentSnapshot doc) {
    return UserDtos.fromJson(doc.data()! as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
