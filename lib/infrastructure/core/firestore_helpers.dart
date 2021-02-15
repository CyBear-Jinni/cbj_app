import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybear_jinni/domain/auth/i_auth_facade.dart';
import 'package:cybear_jinni/domain/core/errors.dart';
import 'package:cybear_jinni/injection.dart';

const homesCollecttionName = 'SmartHomes';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> homeDocument() async {
    final homeOption = await getIt<IAuthFacade>().getCurrentHome();
    final home = homeOption.getOrElse(() => throw MissingCurrentHomeError());
    return FirebaseFirestore.instance
        .collection(homesCollecttionName)
        .doc(home.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get devicesCollecttion => collection('Devices');
}
