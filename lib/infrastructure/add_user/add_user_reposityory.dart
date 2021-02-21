import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybear_jinni/domain/add_user/add_user_entity.dart';
import 'package:cybear_jinni/domain/add_user/add_user_errors.dart';
import 'package:cybear_jinni/domain/add_user/add_user_failures.dart';
import 'package:cybear_jinni/domain/add_user/i_add_user_repository.dart';
import 'package:cybear_jinni/infrastructure/core/firestore_helpers.dart';
import 'package:cybear_jinni/infrastructure/user/user_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAddUserRepository)
class AddUserRepository implements IAddUserRepository {
  AddUserRepository(this._firestore);

  final FirebaseFirestore _firestore;

  Future<Either<AddUserFailures, Unit>> create(
      AddUserEntity deviceEntity, DocumentSnapshot userDocument) async {
    try {
      final devicesDoc = await _firestore.homeDocument();

      final String userId = userDocument.id;
      final String userName = userDocument.get('name').toString();
      final String userEmail = userDocument.get('email').toString();

      final UserDtos userDtos = UserDtos(
        name: userName,
        email: userEmail,
        id: userId,
      );

      await devicesDoc.usersCollecttion.doc(userId).set(userDtos.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const AddUserFailures.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(const AddUserFailures.unexpected());
      }
    }
  }

  Future<Either<AddUserFailures, DocumentSnapshot>> getUserByEmail(
      String email) async {
    try {
      final devicesDoc = await _firestore.usersCollection();
      final QuerySnapshot querySnapshot =
          await devicesDoc.where('email', isEqualTo: email).snapshots().first;
      final List<QueryDocumentSnapshot> queryDocSnapList = querySnapshot.docs;
      final QueryDocumentSnapshot queryDocSnap = queryDocSnapList.first;
      return right(queryDocSnap);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const AddUserFailures.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(const AddUserFailures.unexpected());
      }
    }
  }

  @override
  Future<Either<AddUserFailures, String>> add(
      AddUserEntity addUserEntity) async {
    try {
      final Either<AddUserFailures, DocumentSnapshot> userDocOrFailure =
          await getUserByEmail(addUserEntity.email.getOrCrash());
      final DocumentSnapshot userDocument = userDocOrFailure.fold(
          (f) => throw AddUserUnexpectedValueError(f), (r) => r);

      create(addUserEntity, userDocument);
      return Right(userDocument.id);
    } catch (e) {
      return const Left(AddUserFailures.unexpected());
    }
  }
}
