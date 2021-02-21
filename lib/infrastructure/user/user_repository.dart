import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybear_jinni/domain/auth/i_auth_facade.dart';
import 'package:cybear_jinni/domain/core/errors.dart';
import 'package:cybear_jinni/domain/home_user/home_user_failures.dart';
import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_entity.dart';
import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_failures.dart';
import 'package:cybear_jinni/domain/user/i_user_repository.dart';
import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:cybear_jinni/domain/user/user_value_objects.dart';
import 'package:cybear_jinni/infrastructure/core/firestore_helpers.dart';
import 'package:cybear_jinni/infrastructure/user/all_homes_of_user_entity/all_homes_of_user_dtos.dart';
import 'package:cybear_jinni/infrastructure/user/user_dtos.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  UserRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<HomeUserFailures, Unit>> create(UserEntity userEntity) async {
    try {
      final userCollec = await _firestore.usersCollection();
      final userDtos = UserDtos.fromDomain(userEntity);

      await userCollec.doc(userDtos.id.toString()).set(userDtos.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const HomeUserFailures.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(const HomeUserFailures.unexpected());
      }
    }
  }

  @override
  Future<Either<HomeUserFailures, UserEntity>> getCurrentUser() async {
    try {
      final userCollec = await _firestore.usersCollection();

      String userId = (await getIt<IAuthFacade>().getSignedInUser())
          .getOrElse(() => throw NotAuthenticatedError())
          .id
          .getOrCrash();

      DocumentSnapshot userDocumentS = await userCollec.doc(userId).get();

      String name = userDocumentS.get('name').toString();
      String email = userDocumentS.get('email').toString();

      return right(UserEntity(
        id: UserUniqueId.fromUniqueString(userId),
        email: UserEmail(email),
        name: UserName(name),
      ));
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const HomeUserFailures.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(const HomeUserFailures.unexpected());
      }
    }
  }

  @override
  Future<Either<HomeUserFailures, Unit>> addHome(
      UserEntity userEntity, AllHomesOfUserEntity allHomesOfUserEntity) async {
    try {
      final usersCollection = await _firestore.usersCollection();

      String userId = userEntity.id.getOrCrash();
      String homeId = allHomesOfUserEntity.id.getOrCrash();

      AllHomesOfUserDtos homeUserDtos =
          AllHomesOfUserDtos.fromDomain(allHomesOfUserEntity);

      usersCollection
          .doc(userId)
          .usersHomesCollecttion
          .doc(homeId)
          .set(homeUserDtos.toJson());

      return right(unit);
    } catch (e) {
      return left(const HomeUserFailures.unexpected());
    }
  }

  @override
  Future<Either<HomeUserFailures, Unit>> delete(UserEntity deviceEntity) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<HomeUserFailures, Unit>> update(UserEntity deviceEntity) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>>
      watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }

  // @override
  // Stream<Either<DevicesFailure, KtList<DeviceEntity>>> watchAll() async* {
  //   final devicesDoc = await _firestore.homeDocument();
  //
  //   yield* devicesDoc.devicesCollecttion
  //       .snapshots()
  //       .map(
  //         (snapshot) => right<DevicesFailure, KtList<DeviceEntity>>(
  //           snapshot.docs
  //               .map((doc) => DeviceDtos.fromFirestore(doc).toDomain())
  //               .toImmutableList(),
  //         ),
  //       )
  //       .onErrorReturnWith((e) {
  //     if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
  //       return left(const DevicesFailure.insufficientPermission());
  //     } else {
  //       // log.error(e.toString());
  //       return left(const DevicesFailure.unexpected());
  //     }
  //   });
  // }
  //
  // @override
  // Stream<Either<DevicesFailure, KtList<DeviceEntity>>> watchUncompleted() {
  //   // TODO: implement watchUncompleted
  //   throw UnimplementedError();
  // }
  ////
  // @override
  // Future<Either<DevicesFailure, Unit>> update(DeviceEntity deviceEntity) async {
  //   try {
  //     final devicesDoc = await _firestore.homeDocument();
  //     final deviceDtos = DeviceDtos.fromDomain(deviceEntity);
  //
  //     await devicesDoc.devicesCollecttion
  //         .doc(deviceDtos.id)
  //         .update(deviceDtos.toJson());
  //     return right(unit);
  //   } on PlatformException catch (e) {
  //     if (e.message.contains('NOT_FOUND')) {
  //       return left(const DevicesFailure.unableToUpdate());
  //     } else {
  //       // log.error(e.toString());
  //       return left(const DevicesFailure.unexpected());
  //     }
  //   }
  // }
  //
  // @override
  // Future<Either<DevicesFailure, Unit>> delete(DeviceEntity deviceEntity) async {
  //   try {
  //     final devicesDoc = await _firestore.homeDocument();
  //     final deviceDtos = DeviceDtos.fromDomain(deviceEntity);
  //
  //     await devicesDoc.devicesCollecttion.doc(deviceDtos.id).delete();
  //     return right(unit);
  //   } on PlatformException catch (e) {
  //     if (e.message.contains('PERMISSION_DENIED')) {
  //       return left(const DevicesFailure.insufficientPermission());
  //     } else if (e.message.contains('NOT_FOUND')) {
  //       return left(const DevicesFailure.unableToUpdate());
  //     } else {
  //       // log.error(e.toString());
  //       return left(const DevicesFailure.unexpected());
  //     }
  //   }
  // }
}
