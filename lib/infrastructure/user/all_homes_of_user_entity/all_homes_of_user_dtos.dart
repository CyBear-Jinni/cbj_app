import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_entity.dart';
import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_homes_of_user_dtos.freezed.dart';
part 'all_homes_of_user_dtos.g.dart';

@freezed
abstract class AllHomesOfUserDtos implements _$AllHomesOfUserDtos {
  const factory AllHomesOfUserDtos({
    required String name,
    @JsonKey(includeFromJson: true) String? id,
  }) = _AllHomesOfUserDtos;

  const AllHomesOfUserDtos._();

  factory AllHomesOfUserDtos.fromDomain(
    AllHomesOfUserEntity allHomesOfUserEntity,
  ) {
    return AllHomesOfUserDtos(
      id: allHomesOfUserEntity.id!.getOrCrash(),
      name: allHomesOfUserEntity.name!.getOrCrash()!,
    );
  }

  factory AllHomesOfUserDtos.fromJson(Map<String, dynamic> json) =>
      _$AllHomesOfUserDtosFromJson(json);

  factory AllHomesOfUserDtos.fromFirestore(Map<String, dynamic> doc) {
    return AllHomesOfUserDtos.fromJson(doc);
    // .copyWith(id: doc.id);
  }

  AllHomesOfUserEntity toDomain() {
    return AllHomesOfUserEntity(
      id: AllHomesOfUserUniqueId.fromUniqueString(id),
      name: AllHomesOfUserName(name),
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
