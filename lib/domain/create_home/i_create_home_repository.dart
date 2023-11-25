import 'package:cybear_jinni/domain/create_home/create_home_entity.dart';
import 'package:cybear_jinni/domain/create_home/create_home_failure.dart';
import 'package:cybear_jinni/domain/manage_network/manage_network_entity.dart';
import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:cybear_jinni/infrastructure/create_home/create_home_repository.dart';
import 'package:dartz/dartz.dart';

abstract interface class ICreateHomeRepository {
  static ICreateHomeRepository? _instance;

  static ICreateHomeRepository get instance {
    return _instance ??= CreateHomeRepository();
  }

  Future<Either<CreateHomeFailure, Unit>> createNewHome(
    CreateHomeEntity createHomeEntity,
  );

  Future<Either<CreateHomeFailure, Unit>> addUserToHome(UserEntity userEntity);

  Future<Either<CreateHomeFailure, Unit>> addDeviceUserToHome(
    CreateHomeEntity createHomeEntity,
  );

  Future<Either<CreateHomeFailure, UserEntity>> getDeviceUserFromHome();

  Future<Either<CreateHomeFailure, ManageNetworkEntity>> getFirstWifi();
}
