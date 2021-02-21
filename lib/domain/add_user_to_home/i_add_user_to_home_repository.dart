import 'package:cybear_jinni/domain/add_user_to_home/add_user_to_home_entity.dart';
import 'package:cybear_jinni/domain/add_user_to_home/add_user_to_home_failures.dart';
import 'package:dartz/dartz.dart';

abstract class IAddUserToHomeRepository {
  // watch devices
  // watch only a
  // CUD

  // C Read UD

  Future<Either<AddUserToHomeFailures, String>> add(
      AddUserToHomeEntity addUserHomeEntity);
}
