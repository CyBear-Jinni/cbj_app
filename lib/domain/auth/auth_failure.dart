import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  /// When user canceled the auth
  const factory AuthFailure.cancelledByUser() = CancelledByUser;

  /// Un specified server error
  const factory AuthFailure.serverError() = ServerError;

  /// Email is already in use while trying to register
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;

  /// Wrong credentials while authenticating
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}
