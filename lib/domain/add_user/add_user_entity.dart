import 'package:cybear_jinni/domain/add_user/add_user_failures.dart';
import 'package:cybear_jinni/domain/add_user/add_user_value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_user_entity.freezed.dart';

@freezed
abstract class AddUserEntity implements _$AddUserEntity {
  const AddUserEntity._();

  const factory AddUserEntity({
    @required AddUserEmail email,
    @required AddUserPermission permission,
  }) = _AddUserEntity;

  factory AddUserEntity.empty() => AddUserEntity(
        email: AddUserEmail(''),
        permission: AddUserPermission(''),
      );

  Option<AddUserFailures<dynamic>> get failureOption {
    return email.value.fold((f) => some(f), (_) => none());
  }
}
