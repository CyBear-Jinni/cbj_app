import 'package:cybear_jinni/domain/add_user/add_user_failures.dart';
import 'package:dartz/dartz.dart';

Either<AddUserFailures<String>, String> validateAddUserEmailNotEmpty(
    String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(AddUserFailures.empty(
      failedValue: input,
    ));
  }
}

Either<AddUserFailures<String>, String> validateAddUserPermissionExist(
    String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(AddUserFailures.empty(
      failedValue: input,
    ));
  }
}
