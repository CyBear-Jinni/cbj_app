import 'package:cybear_jinni/domain/user/user_failures.dart';
import 'package:cybear_jinni/domain/user/user_value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
abstract class UserEntity implements _$UserEntity {
  const UserEntity._();

  const factory UserEntity({
    @required UserUniqueId id,
    @required UserEmail email,
    @required UserName name,
    UserPass pass,
    UserFirstName firstName,
    UserLastName lastName,
  }) = _UserEntity;

  factory UserEntity.empty() => UserEntity(
        id: UserUniqueId(),
        email: UserEmail(''),
        name: UserName(''),
      );

  Option<UserFailures<dynamic>> get failureOption {
    return email.value.fold((f) => some(f), (_) => none());
  }
}
