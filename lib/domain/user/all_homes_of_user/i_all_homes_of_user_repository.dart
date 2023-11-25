import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_failures.dart';
import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract interface class IAllHomesOfUserRepository {
  // watch devices
  // watch only a
  // CUD

  // C Read UD

  Future<Either<AllHomesOfUserFailures, Unit>> add(UserEntity deviceEntity);

  Future<Either<AllHomesOfUserFailures, Unit>> update(UserEntity deviceEntity);

  Future<Either<AllHomesOfUserFailures, Unit>> delete(UserEntity deviceEntity);
}
