import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/create_home/i_create_home_repository.dart';
import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_entity.dart';
import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_value_objects.dart';
import 'package:cybear_jinni/domain/user/i_user_repository.dart';
import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:cybear_jinni/domain/user/user_errors.dart';
import 'package:cybear_jinni/domain/user/user_failures.dart';
import 'package:cybear_jinni/infrastructure/core/hive_local_db/hive_local_db.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICreateHomeRepository)
class CreateHomeRepository implements ICreateHomeRepository {
  CreateHomeRepository(this._firestore, this._firebaseAuth);

  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;

  final String smartHomesPath = 'SmartHomes';
  final String usersInHomePath = 'Users';

  @override
  Future<Option<Unit>> createNewHome() async {
    try {
      String uniqueHomeId = UniqueId().getOrCrash();
      String currentUserUid = _firebaseAuth.currentUser.uid;
      final String fullPath =
          '/$smartHomesPath/$uniqueHomeId/$usersInHomePath/$currentUserUid';
      Map<String, dynamic> data = {
        'name': '',
        // request.auth.uid
      };

      await _firestore.doc(fullPath).set(data);
      await HiveLocalDbHelper.setHomeId(uniqueHomeId);

      UserEntity userEntity = (await getIt<IUserRepository>().getCurrentUser())
          .getOrElse(
              () => throw UserUnexpectedValueError(UserFailures.unexpected()));

      AllHomesOfUserEntity allHomesOfUserEntity = AllHomesOfUserEntity(
          id: AllHomesOfUserUniqueId.fromUniqueString(uniqueHomeId),
          name: AllHomesOfUserName('home'));

      await getIt<IUserRepository>().addHome(userEntity, allHomesOfUserEntity);

      return optionOf(unit);
    } catch (e) {
      return optionOf(null);
    }
  }
}
