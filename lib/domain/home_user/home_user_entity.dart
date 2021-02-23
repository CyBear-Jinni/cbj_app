import 'package:cybear_jinni/domain/home_user/home_user_failures.dart';
import 'package:cybear_jinni/domain/home_user/home_user_value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_user_entity.freezed.dart';

@freezed
abstract class HomeUserEntity implements _$HomeUserEntity {
  const HomeUserEntity._();

  const factory HomeUserEntity({
    @required HomeUserUniqueId id,
    @required HomeUserEmail email,
    @required HomeUserName name,
    @required HomeUserPermission permission,
  }) = _HomeUserEntity;

  factory HomeUserEntity.empty() => HomeUserEntity(
        id: HomeUserUniqueId(),
        email: HomeUserEmail(''),
        name: HomeUserName(''),
        permission: HomeUserPermission(''),
      );

  Option<HomeUserFailures<dynamic>> get failureOption {
    return email.value.fold((f) => some(f), (_) => none());
  }
}
