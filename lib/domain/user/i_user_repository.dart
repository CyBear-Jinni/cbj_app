import 'package:cybear_jinni/domain/home_user/home_user_failures.dart';
import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_entity.dart';
import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_failures.dart';
import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class IUserRepository {
  // watch devices
  // watch only a
  // CUD

  // C Read UD

  Future<Either<HomeUserFailures, Unit>> create(UserEntity deviceEntity);

  Future<Either<HomeUserFailures, Unit>> addHome(
    UserEntity userEntity,
    AllHomesOfUserEntity allHomesOfUserEntity,
  );

  Future<Either<HomeUserFailures, Unit>> joinExistingHome(
    AllHomesOfUserEntity allHomesOfUserEntity,
  );

  Stream<Either<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>>
      watchAll();

  Future<Either<HomeUserFailures, Unit>> update(UserEntity deviceEntity);

  Future<Either<HomeUserFailures, UserEntity>> getCurrentUser();

  Future<Either<HomeUserFailures, Unit>> delete(UserEntity deviceEntity);
}
