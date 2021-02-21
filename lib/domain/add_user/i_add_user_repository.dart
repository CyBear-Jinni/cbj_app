import 'package:cybear_jinni/domain/add_user/add_user_entity.dart';
import 'package:cybear_jinni/domain/add_user/add_user_failures.dart';
import 'package:dartz/dartz.dart';

abstract class IAddUserRepository {
  // watch devices
  // watch only a
  // CUD

  // C Read UD

  Future<Either<AddUserFailures, String>> add(AddUserEntity addUserEntity);
}
