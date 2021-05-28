import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_failures.dart';
import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_homes_of_user_entity.freezed.dart';

@freezed
abstract class AllHomesOfUserEntity implements _$AllHomesOfUserEntity {
  const factory AllHomesOfUserEntity({
    required AllHomesOfUserUniqueId? id,
    required AllHomesOfUserName? name,
  }) = _AllHomesOfUserEntity;

  const AllHomesOfUserEntity._();

  factory AllHomesOfUserEntity.empty() => AllHomesOfUserEntity(
        id: AllHomesOfUserUniqueId(),
        name: AllHomesOfUserName(''),
      );

  Option<AllHomesOfUserFailures<dynamic>> get failureOption {
    return name!.value.fold((f) => some(f), (_) => none());
  }
}
