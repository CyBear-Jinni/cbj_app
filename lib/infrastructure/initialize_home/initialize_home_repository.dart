import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/initialize_home/i_initialize_home_repository.dart';
import 'package:cybear_jinni/infrastructure/core/hive_local_db/hive_local_db.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IInitializeHomeRepository)
class InitializeHomeRepository implements IInitializeHomeRepository {
  InitializeHomeRepository(this._firestore, this._firebaseAuth);

  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;

  final String smartHomesPath = 'SmartHomes';
  final String usersInHomePath = 'Users';

  @override
  Future<Option<Unit>> initializingNewHome() async {
    try {
      String uniqueHomeId = UniqueId().getOrCrash();
      String currentUserUid = _firebaseAuth.currentUser.uid;
      final String fullPath =
          '/$smartHomesPath/$uniqueHomeId/$usersInHomePath/$currentUserUid';
      Map<String, dynamic> data = {
        'Name': '',
        // request.auth.uid
      };

      await _firestore.doc(fullPath).set(data);
      await HiveLocalDbHelper.setHomeId(uniqueHomeId);
      return optionOf(unit);
    } catch (e) {
      return optionOf(null);
    }
  }
}
