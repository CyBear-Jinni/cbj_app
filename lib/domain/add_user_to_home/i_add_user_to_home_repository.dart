import 'package:cybear_jinni/domain/add_user_to_home/add_user_to_home_failures.dart';
import 'package:cybear_jinni/domain/home_user/home_user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class IAddUserToHomeRepository {
  // watch devices
  // watch only a
  // CUD

  // C Read UD

  Future<Either<AddUserToHomeFailures, String>> add(
    HomeUserEntity homeUserEntity,
  );

  Future<Either<AddUserToHomeFailures, Unit>> create(
    HomeUserEntity homeUserEntity,
  );
}
