import 'package:cybear_jinni/domain/auth/user.dart';
import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainX on User {
  MUser toDomain() {
    return MUser(
      id: UniqueId.fromUniqueString(uid),
    );
  }

  MHome homeToDomain() {
    return MHome(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
