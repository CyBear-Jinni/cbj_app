import 'package:cybear_jinni/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

Either<AuthValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(AuthValueFailure.invalidEmail(failedValue: input));
  }
}

Either<AuthValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(AuthValueFailure.invalidEmail(failedValue: input));
  }
}
