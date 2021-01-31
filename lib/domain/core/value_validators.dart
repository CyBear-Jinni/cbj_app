import 'package:cybear_jinni/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

Either<AuthValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(AuthValueFailure.invalidEmail(failedValue: input));
  }
}

Either<AuthValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(AuthValueFailure.empty(failedValue: input));
  }
}

// KtList is immutable list, you are modifying the list and not a copy
Either<AuthValueFailure<KtList<T>>, KtList<T>> validateMaxLength<T>(
  KtList<T> input,
  int maxLength,
) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(
        AuthValueFailure.listTooLong(failedValue: input, max: maxLength));
  }
}

Either<AuthValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(AuthValueFailure.invalidEmail(failedValue: input));
  }
}
