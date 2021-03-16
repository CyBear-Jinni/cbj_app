import 'package:cybear_jinni/domain/auth/auth_failure.dart';
import 'package:cybear_jinni/domain/auth/i_auth_facade.dart';
import 'package:cybear_jinni/domain/auth/user.dart';
import 'package:cybear_jinni/domain/auth/value_objects.dart';
import 'package:cybear_jinni/domain/core/errors.dart';
import 'package:cybear_jinni/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/user/i_user_repository.dart';
import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:cybear_jinni/domain/user/user_value_objects.dart';
import 'package:cybear_jinni/infrastructure/auth/firebase_user_mapper.dart';
import 'package:cybear_jinni/infrastructure/core/hive_local_db/hive_local_db.dart';
import 'package:cybear_jinni/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import 'firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  @override
  Future<Option<MUser>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<Option<MHome>> getCurrentHome() async => optionOf(MHome(
      id: UniqueId.fromUniqueString(await HiveLocalDbHelper.getHomeId())));

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {@required EmailAddress emailAddress,
      @required Password password,
      MUser userId}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);

      String userIdString;
      if (userId == null) {
        final MUser mUser = (await getSignedInUser())
            .getOrElse(() => throw NotAuthenticatedError());
        userIdString = mUser.id.getOrCrash();
      } else {
        userIdString = userId.id.getOrCrash();
      }
      final String userName =
          emailAddressStr.substring(0, emailAddressStr.indexOf('@'));

      final UserEntity userEntity = UserEntity(
        id: UserUniqueId.fromUniqueString(userIdString),
        email: UserEmail(emailAddressStr),
        name: UserName(userName),
        firstName: UserFirstName(' '),
        lastName: UserLastName(' '),
      );

      final registrarOutput = await getIt<IUserRepository>().create(userEntity);
      registrarOutput.getOrElse(() => throw NotAuthenticatedError());

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, MUser>> registerWithEmailAndPasswordReturnUserId(
      {EmailAddress emailAddress, Password password}) async {
    try {
      final MUser mUser = (await getSignedInUser())
          .getOrElse(() => throw NotAuthenticatedError());

      final Either<AuthFailure, Unit> registerUser =
          await registerWithEmailAndPassword(
              emailAddress: emailAddress, password: password, userId: mUser);

      registerUser.getOrElse(
          () => throw ('Error registering user with Email and Password'));

      return right(mUser);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {@required EmailAddress emailAddress,
      @required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );
      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((r) => right(unit));
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);
}
