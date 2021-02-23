import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybear_jinni/domain/auth/i_auth_facade.dart';
import 'package:cybear_jinni/domain/core/errors.dart';
import 'package:cybear_jinni/injection.dart';

const homesCollecttionName = 'SmartHomes';
const usersCollecttionName = 'users';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> currentHomeDocument() async {
    final homeOption = await getIt<IAuthFacade>().getCurrentHome();
    final home = homeOption.getOrElse(() => throw MissingCurrentHomeError());
    return FirebaseFirestore.instance
        .collection(homesCollecttionName)
        .doc(home.id.getOrCrash());
  }

  Future<DocumentReference> currentUserDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw MissingCurrentHomeError());
    return FirebaseFirestore.instance
        .collection(usersCollecttionName)
        .doc(user.id.getOrCrash());
  }

  Future<CollectionReference> homeCollection() async {
    return FirebaseFirestore.instance.collection(homesCollecttionName);
  }

  Future<CollectionReference> usersCollection() async {
    return FirebaseFirestore.instance.collection(usersCollecttionName);
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get devicesCollecttion => collection('Devices');
  CollectionReference get usersCollecttion => collection('Users');
  CollectionReference get devicesUsersCollecttion => collection('DevicesUsers');
  CollectionReference get usersHomesCollecttion => collection('homes');
}
