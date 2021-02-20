import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybear_jinni/domain/user/i_user_repository.dart';
import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:cybear_jinni/domain/user/user_failures.dart';
import 'package:cybear_jinni/infrastructure/core/firestore_helpers.dart';
import 'package:cybear_jinni/infrastructure/user/user_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  UserRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<UserFailures, Unit>> add(UserEntity deviceEntity) async {
    // try {
    //   final devicesDoc = await _firestore.homeDocument();
    //   final deviceDtos = DeviceDtos.fromDomain(deviceEntity);
    //
    //   await devicesDoc.devicesCollecttion
    //       .doc(deviceDtos.id)
    //       .set(deviceDtos.toJson());
    //   return right(unit);
    // } on PlatformException catch (e) {
    //   if (e.message.contains('PERMISSION_DENIED')) {
    //     return left(const DevicesFailure.insufficientPermission());
    //   } else {
    //     // log.error(e.toString());
    //     return left(const DevicesFailure.unexpected());
    //   }
    // }
    return left(const UserFailures.unexpected());
  }

  @override
  Future<Either<UserFailures, Unit>> delete(UserEntity deviceEntity) async {
    // try {
    //   final devicesDoc = await _firestore.homeDocument();
    //   final deviceDtos = DeviceDtos.fromDomain(deviceEntity);
    //
    //   await devicesDoc.devicesCollecttion.doc(deviceDtos.id).delete();
    //   return right(unit);
    // } on PlatformException catch (e) {
    //   if (e.message.contains('PERMISSION_DENIED')) {
    //     return left(const DevicesFailure.insufficientPermission());
    //   } else if (e.message.contains('NOT_FOUND')) {
    //     return left(const DevicesFailure.unableToUpdate());
    //   } else {
    //     // log.error(e.toString());
    //     return left(const DevicesFailure.unexpected());
    //   }
    // }
    return left(const UserFailures.unexpected());
  }

  @override
  Stream<Either<UserFailures, KtList<UserEntity>>> getAllUsers() async* {
    final homeDocument = await _firestore.homeDocument();

    yield* homeDocument.usersCollecttion.snapshots().map(
              (snapshot) => right<UserFailures, KtList<UserEntity>>(
                snapshot.docs
                    .map((doc) => UserDtos.fromFirestore(doc).toDomain())
                    .toImmutableList(),
              ),
            )
        //     .onErrorReturnWith((e) {
        //   if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        //     return left(const UserFailures.insufficientPermission());
        //   } else {
        //     // log.error(e.toString());
        //     return left(const UserFailures.unexpected());
        //   }
        // })
        ;
  }

  @override
  Future<Either<UserFailures, Unit>> update(UserEntity deviceEntity) async {
    // try {
    //   final devicesDoc = await _firestore.homeDocument();
    //   final deviceDtos = DeviceDtos.fromDomain(deviceEntity);
    //
    //   await devicesDoc.devicesCollecttion
    //       .doc(deviceDtos.id)
    //       .update(deviceDtos.toJson());
    //   return right(unit);
    // } on PlatformException catch (e) {
    //   if (e.message.contains('NOT_FOUND')) {
    //     return left(const DevicesFailure.unableToUpdate());
    //   } else {
    //     // log.error(e.toString());
    //     return left(const DevicesFailure.unexpected());
    //   }
    // }
    return left(const UserFailures.unexpected());
  }
}
