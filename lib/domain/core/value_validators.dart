import 'package:cybear_jinni/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

Either<AuthValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(const AuthValueFailure.invalidEmail(
        failedValue: 'Invalid email address'));
  }
}

Either<AuthValueFailure<String>, String> validateEmailWithoutSpace(
    String input) {
  if (!input.contains(' ') && !input.contains('\t')) {
    return right(input);
  } else {
    return left(const AuthValueFailure.containsSpace(
        failedValue: 'Email cannot contain spaces'));
  }
}

Either<AuthValueFailure<String>, String> validatePasswordLength(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(const AuthValueFailure.shortPassword(
        failedValue: 'Password length is too short'));
  }
}

Either<AuthValueFailure<String>, String> validatePasswordWithoutSpace(
    String input) {
  if (!input.contains(' ') && !input.contains('\t')) {
    return right(input);
  } else {
    return left(const AuthValueFailure.containsSpace(
        failedValue: 'Password cannot contain spaces'));
  }
}
