import 'package:cybear_jinni/domain/user/user_failures.dart';
import 'package:dartz/dartz.dart';

Either<UserFailures<String>, String> validateUserEmailNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(UserFailures.empty(
      failedValue: input,
    ));
  }
}
