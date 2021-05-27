import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybear_jinni/domain/home_user/home_user_entity.dart';
import 'package:cybear_jinni/domain/home_user/home_user_failures.dart';
import 'package:cybear_jinni/domain/home_user/i_home_user_repository.dart';
import 'package:cybear_jinni/infrastructure/core/firestore_helpers.dart';
import 'package:cybear_jinni/infrastructure/home_user/home_user_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IHomeUserRepository)
class HomeUserRepository implements IHomeUserRepository {
  HomeUserRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<HomeUserFailures, Unit>> add(
      HomeUserEntity homeUserEntity) async {
    // try {
    //   final devicesDoc = await _firestore.homeDocument();
    //   final deviceDtos = DeviceDtos.fromDomain(deviceEntity);
    //
    //   await devicesDoc.devicesCollecttion
    //       .doc(deviceDtos.id)
    //       .set(deviceDtos.toJson());
    //   return right(unit);
    // } on PlatformException catch (e) {
    //   if (e.message!.contains('PERMISSION_DENIED')) {
    //     return left(const DevicesFailure.insufficientPermission());
    //   } else {
    //     // log.error(e.toString());
    //     return left(const DevicesFailure.unexpected());
    //   }
    // }
    return left(const HomeUserFailures.unexpected());
  }

  @override
  Future<Either<HomeUserFailures, Unit>> delete(
      HomeUserEntity deviceEntity) async {
    // try {
    //   final devicesDoc = await _firestore.homeDocument();
    //   final deviceDtos = DeviceDtos.fromDomain(deviceEntity);
    //
    //   await devicesDoc.devicesCollecttion.doc(deviceDtos.id).delete();
    //   return right(unit);
    // } on PlatformException catch (e) {
    //   if (e.message!.contains('PERMISSION_DENIED')) {
    //     return left(const DevicesFailure.insufficientPermission());
    //   } else if (e.message!.contains('NOT_FOUND')) {
    //     return left(const DevicesFailure.unableToUpdate());
    //   } else {
    //     // log.error(e.toString());
    //     return left(const DevicesFailure.unexpected());
    //   }
    // }
    return left(const HomeUserFailures.unexpected());
  }

  @override
  Stream<Either<HomeUserFailures, KtList<HomeUserEntity>>>
      getAllUsers() async* {
    final homeDocument = await _firestore.currentHomeDocument();

    yield* homeDocument.usersCollecttion.snapshots().map(
              (snapshot) => right<HomeUserFailures, KtList<HomeUserEntity>>(
                snapshot.docs
                    .map((doc) => HomeUserDtos.fromFirestore(doc).toDomain())
                    .toImmutableList(),
              ),
            )
        //     .onErrorReturnWith((e) {
        //   if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        //     return left(const UserFailures.insufficientPermission());
        //   } else {
        //     // log.error(e.toString());
        //     return left(const UserFailures.unexpected());
        //   }
        // })
        ;
  }

  @override
  Future<Either<HomeUserFailures, Unit>> update(
      HomeUserEntity deviceEntity) async {
    // try {
    //   final devicesDoc = await _firestore.homeDocument();
    //   final deviceDtos = DeviceDtos.fromDomain(deviceEntity);
    //
    //   await devicesDoc.devicesCollecttion
    //       .doc(deviceDtos.id)
    //       .update(deviceDtos.toJson());
    //   return right(unit);
    // } on PlatformException catch (e) {
    //   if (e.message!.contains('NOT_FOUND')) {
    //     return left(const DevicesFailure.unableToUpdate());
    //   } else {
    //     // log.error(e.toString());
    //     return left(const DevicesFailure.unexpected());
    //   }
    // }
    return left(const HomeUserFailures.unexpected());
  }
}
