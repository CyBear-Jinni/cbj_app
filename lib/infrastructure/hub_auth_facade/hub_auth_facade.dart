import 'package:cbj_integrations_controller/domain/core/errors.dart';
import 'package:cbj_integrations_controller/domain/core/value_objects.dart';
import 'package:cybear_jinni/domain/auth/auth_failure.dart';
import 'package:cybear_jinni/domain/auth/i_auth_facade.dart';
import 'package:cybear_jinni/domain/auth/user.dart';
import 'package:cybear_jinni/domain/auth/value_objects.dart';
import 'package:cybear_jinni/domain/local_db/i_local_db_repository2.dart';
import 'package:cybear_jinni/domain/user/i_user_repository.dart';
import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:cybear_jinni/domain/user/user_value_objects.dart';
import 'package:dartz/dartz.dart';

class HubAuthFacade implements IAuthFacade {
  @override
  Future<Option<MUser>> getSignedInUser() async =>
      optionOf(MUser(id: UniqueId()));

  @override
  Future<Option<MHome>> getCurrentHome() async => optionOf(
        MHome(
          id: UniqueId.fromUniqueString(
            await ILocalDbRepository2.instance.getHomeId(),
          ),
        ),
      );

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final Either<AuthFailure, MUser>
        registerWithEmailAndPasswordReturnUserIdOutput =
        await registerWithEmailAndPasswordReturnUserId(
      emailAddress: emailAddress,
      password: password,
    );

    return registerWithEmailAndPasswordReturnUserIdOutput.fold(
      (l) => left(const AuthFailure.emailAlreadyInUse()),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<AuthFailure, MUser>> registerWithEmailAndPasswordReturnUserId({
    EmailAddress? emailAddress,
    Password? password,
  }) async {
    final emailAddressStr = emailAddress!.getOrCrash();

    try {
      // final UserCredential userCredential =
      //     await _firebaseAuth.createUserWithEmailAndPassword(
      //         email: emailAddressStr, password: passwordStr);
      //
      const String userIdString = '12344';

      final String userName =
          emailAddressStr.substring(0, emailAddressStr.indexOf('@'));

      final UserEntity userEntity = UserEntity(
        id: UserUniqueId.fromUniqueString('12344'),
        email: UserEmail(emailAddressStr),
        name: UserName(userName),
        firstName: UserFirstName(' '),
        lastName: UserLastName(' '),
      );

      final registrarOutput = await IUserRepository.instance.create(userEntity);
      registrarOutput.getOrElse(() => throw NotAuthenticatedError());

      final MUser mUser = MUser(id: UniqueId.fromUniqueString(userIdString));
      return right(mUser);
    } catch (e) {
      if (e == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    try {
      return right(unit);
    } catch (e) {
      if (e == 'wrong-password' || e == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<void> signOut() => Future.wait([]);
}
