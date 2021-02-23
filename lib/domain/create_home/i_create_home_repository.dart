import 'package:cybear_jinni/domain/create_home/create_home_entity.dart';
import 'package:cybear_jinni/domain/create_home/create_home_failure.dart';
import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ICreateHomeRepository {
  Future<Either<CreateHomeFailure, Unit>> createNewHome(
      CreateHomeEntity createHomeEntity);

  Future<Either<CreateHomeFailure, Unit>> addUserToHome(UserEntity userEntity);

  Future<Either<CreateHomeFailure, Unit>> addDeviceUserToHome(
      CreateHomeEntity createHomeEntity);
}
