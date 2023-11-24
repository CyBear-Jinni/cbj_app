import 'package:cybear_jinni/domain/home_user/home_user_entity.dart';
import 'package:cybear_jinni/domain/home_user/home_user_failures.dart';
import 'package:cybear_jinni/infrastructure/home_user/home_user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract interface class IHomeUserRepository {
  static IHomeUserRepository? _instance;

  static IHomeUserRepository get instance {
    return _instance ??= HomeUserRepository();
  }

  Stream<Either<HomeUserFailures, KtList<HomeUserEntity>>> getAllUsers();

  Future<Either<HomeUserFailures, Unit>> add(HomeUserEntity deviceEntity);

  Future<Either<HomeUserFailures, Unit>> update(HomeUserEntity deviceEntity);

  Future<Either<HomeUserFailures, Unit>> delete(HomeUserEntity deviceEntity);
}
