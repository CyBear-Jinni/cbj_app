import 'package:cybear_jinni/domain/add_user_to_home/add_user_to_home_failures.dart';
import 'package:cybear_jinni/domain/home_user/home_user_entity.dart';
import 'package:cybear_jinni/infrastructure/add_user_to_home/add_user_to_home_reposityory.dart';
import 'package:dartz/dartz.dart';

abstract interface class IAddUserToHomeRepository {
  static IAddUserToHomeRepository? _instance;

  static IAddUserToHomeRepository get instance {
    return _instance ??= AddUserToHomeRepository();
  }

  Future<Either<AddUserToHomeFailures, String>> add(
    HomeUserEntity homeUserEntity,
  );

  Future<Either<AddUserToHomeFailures, Unit>> create(
    HomeUserEntity homeUserEntity,
  );
}
