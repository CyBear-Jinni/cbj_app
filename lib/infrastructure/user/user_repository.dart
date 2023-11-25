import 'package:cbj_integrations_controller/domain/core/errors.dart';
import 'package:cybear_jinni/domain/auth/i_auth_facade.dart';
import 'package:cybear_jinni/domain/home_user/home_user_failures.dart';
import 'package:cybear_jinni/domain/local_db/i_local_db_repository2.dart';
import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_entity.dart';
import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_failures.dart';
import 'package:cybear_jinni/domain/user/i_user_repository.dart';
import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:cybear_jinni/infrastructure/user/all_homes_of_user_entity/all_homes_of_user_dtos.dart';
import 'package:cybear_jinni/infrastructure/user/user_dtos.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:kt_dart/kt.dart';

class UserRepository implements IUserRepository {
  @override
  Future<Either<HomeUserFailures, Unit>> create(UserEntity userEntity) async {
    try {
      // final userCollec = await _firestore.usersCollection();
      final userDtos = UserDtos.fromDomain(userEntity);

      // await userCollec.doc(userDtos.id.toString()).set(userDtos.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
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
      // final userCollec = await _firestore.usersCollection();

      final String userId = (await IAuthFacade.instance.getSignedInUser())
          .getOrElse(() => throw NotAuthenticatedError())
          .id
          .getOrCrash();

      // final DocumentSnapshot userDocumentS = await userCollec.doc(userId).get();

      // final String name = userDocumentS.get('name').toString();
      // final String email = userDocumentS.get('email').toString();

      // return right(UserEntity(
      //   id: UserUniqueId.fromUniqueString(userId),
      //   email: UserEmail(email),
      //   name: UserName(name),
      // ));
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const HomeUserFailures.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(const HomeUserFailures.unexpected());
      }
    }
    return left(const HomeUserFailures.unexpected());
  }

  @override
  Future<Either<HomeUserFailures, Unit>> addHome(
    UserEntity userEntity,
    AllHomesOfUserEntity allHomesOfUserEntity,
  ) async {
    try {
      // final usersCollection = await _firestore.usersCollection();
      // final homeCollection = await _firestore.homeCollection();

      final String userId = userEntity.id!.getOrCrash()!;
      final String homeId = allHomesOfUserEntity.id!.getOrCrash()!;

      // final userInHomeRef =
      //     homeCollection.doc(homeId).usersCollecttion.doc(userId);
      // final homeDoc = await userInHomeRef.get();
      //
      // if (!homeDoc.exists) {
      //   return left(const HomeUserFailures.homeDoesNotExist());
      // }
      //
      final AllHomesOfUserDtos homeUserDtos =
          AllHomesOfUserDtos.fromDomain(allHomesOfUserEntity);
      //
      // await usersCollection
      //     .doc(userId)
      //     .usersHomesCollecttion
      //     .doc(homeId)
      //     .set(homeUserDtos.toJson());
      //
      await ILocalDbRepository2.instance.setHomeId(homeId);

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
      watchAll() async* {
    // final devicesDoc = await _firestore.currentUserDocument();

    // yield* devicesDoc.usersHomesCollecttion.snapshots().map(
    //       (snapshot) =>
    //           right<AllHomesOfUserFailures, KtList<AllHomesOfUserEntity>>(
    //         snapshot.docs
    //             .map((doc) => AllHomesOfUserDtos.fromFirestore(doc).toDomain())
    //             .toImmutableList(),
    //       ),
    //     );
    //     .onErrorReturnWith((e) {
    //   if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
    //     return left(const AllHomesOfUserFailures.insufficientPermission());
    //   } else {
    //     // log.error(e.toString());
    //     return left(const AllHomesOfUserFailures.unexpected());
    //   }
    // });
  }

  @override
  Future<Either<HomeUserFailures, Unit>> joinExistingHome(
    AllHomesOfUserEntity allHomesOfUserEntity,
  ) async {
    try {
      // final homeCollection = await _firestore.homeCollection();

      final String userId = (await IAuthFacade.instance.getSignedInUser())
          .getOrElse(() => throw NotAuthenticatedError())
          .id
          .getOrCrash();
      final String homeId = allHomesOfUserEntity.id!.getOrCrash()!;

      // final userInHomeRef =
      //     homeCollection.doc(homeId).usersCollecttion.doc(userId);
      // final homeDoc = await userInHomeRef.get();
      //
      // if (!homeDoc.exists) {
      //   return left(const HomeUserFailures.homeDoesNotExist());
      // }

      await ILocalDbRepository2.instance.setHomeId(homeId);

      return right(unit);
    } catch (e) {
      return left(const HomeUserFailures.unexpected());
    }
  }
}
