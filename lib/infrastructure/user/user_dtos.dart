import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:cybear_jinni/domain/user/user_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
abstract class UserDtos implements _$UserDtos {
  const factory UserDtos({
    @JsonKey(ignore: true) String? id,
    required String email,
    required String name,
    String? firstName,
    String? lastName,
  }) = _UserDtos;

  const UserDtos._();

  factory UserDtos.fromDomain(UserEntity userEntity) {
    return UserDtos(
      id: userEntity.id!.getOrCrash(),
      email: userEntity.email!.getOrCrash(),
      name: userEntity.name!.getOrCrash(),
      firstName: userEntity.firstName!.getOrCrash(),
      lastName: userEntity.lastName!.getOrCrash(),
    );
  }

  factory UserDtos.fromJson(Map<String, dynamic> json) =>
      _$UserDtosFromJson(json);

  factory UserDtos.fromFirestore(Map<String, dynamic> doc) {
    return UserDtos.fromJson(doc);
    // .copyWith(id: doc.id);
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
}

class ServerTimestampConverter implements JsonConverter<DateTime, Object> {
  const ServerTimestampConverter();

  @override
  DateTime fromJson(Object json) {
    return DateTime.now();
  }

  @override
  Object toJson(DateTime fieldValue) => fieldValue;
}
