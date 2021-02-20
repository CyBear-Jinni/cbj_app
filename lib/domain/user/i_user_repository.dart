import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:cybear_jinni/domain/user/user_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IUserRepository {
  // watch devices
  // watch only a
  // CUD

  // C Read UD

  Stream<Either<UserFailures, KtList<UserEntity>>> getAllUsers();

  Future<Either<UserFailures, Unit>> add(UserEntity deviceEntity);

  Future<Either<UserFailures, Unit>> update(UserEntity deviceEntity);

  Future<Either<UserFailures, Unit>> delete(UserEntity deviceEntity);
}
