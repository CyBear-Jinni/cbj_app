import 'package:cybear_jinni/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';

/// Checking if the email is valid using regex.
Either<AuthValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(
        AuthValueFailure.invalidEmail(failedValue: 'Email_is_invalid'.tr()));
  }
}

/// Checking if the email contains spaces or tabs (' ' or \t)
Either<AuthValueFailure<String>, String> validateEmailWithoutSpace(
    String input) {
  if (!input.contains(' ') && !input.contains('\t')) {
    return right(input);
  } else {
    return left(AuthValueFailure.containsSpace(
        failedValue: 'Email_cannot_contain_spaces'.tr()));
  }
}

/// Checking if the password is less then 6 characters.
Either<AuthValueFailure<String>, String> validatePasswordLength(String input) {
  int maxLength = 6;
  if (input.length >= maxLength) {
    return right(input);
  } else {
    return left(AuthValueFailure.shortPassword(
        failedValue: 'Password_must_be_bigger_than__characters'
            .tr(args: <String>[maxLength.toString()])));
  }
}

/// Checking if the password contains spaces or tabs (' ' or \t).
Either<AuthValueFailure<String>, String> validatePasswordWithoutSpace(
    String input) {
  if (!input.contains(' ') && !input.contains('\t')) {
    return right(input);
  } else {
    return left(AuthValueFailure.containsSpace(
        failedValue: 'Password_cannot_contain_spaces'.tr()));
  }
}
