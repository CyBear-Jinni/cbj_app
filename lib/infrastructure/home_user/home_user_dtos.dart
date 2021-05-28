import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybear_jinni/domain/home_user/home_user_entity.dart';
import 'package:cybear_jinni/domain/home_user/home_user_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_user_dtos.freezed.dart';
part 'home_user_dtos.g.dart';

@freezed
abstract class HomeUserDtos implements _$HomeUserDtos {
  const factory HomeUserDtos({
    @JsonKey(ignore: true) String? id,
    required String? email,
    required String? name,
    required String? permission,
  }) = _HomeUserDtos;

  const HomeUserDtos._();

  factory HomeUserDtos.fromDomain(HomeUserEntity homeUserEntity) {
    return HomeUserDtos(
      id: homeUserEntity.id!.getOrCrash(),
      email: homeUserEntity.email!.getOrCrash(),
      name: homeUserEntity.name!.getOrCrash(),
      permission: homeUserEntity.permission!.getOrCrash(),
    );
  }

  factory HomeUserDtos.fromJson(Map<String, dynamic> json) =>
      _$HomeUserDtosFromJson(json);

  factory HomeUserDtos.fromFirestore(DocumentSnapshot doc) {
    return HomeUserDtos.fromJson(doc.data()! as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }

  HomeUserEntity toDomain() {
    return HomeUserEntity(
        id: HomeUserUniqueId.fromUniqueString(id),
        email: HomeUserEmail(email),
        name: HomeUserName(name!),
        permission: HomeUserPermission(permission!));
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
