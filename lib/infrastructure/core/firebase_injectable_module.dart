import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseInjectableModule {
  @LazySingleton()
  GoogleSignIn get googleSignIn => GoogleSignIn();

  @LazySingleton()
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
// @LazySingleton()
// FireStore get firestore => Firestore.instance;

}
