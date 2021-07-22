import 'package:cybear_jinni/domain/add_user_to_home/add_user_to_home_failures.dart';
import 'package:dartz/dartz.dart';

Either<AddUserToHomeFailures<String>, String>
    validateAddUserToHomeEmailNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(AddUserToHomeFailures.empty(
      failedValue: input,
    ));
  }
}

Either<AddUserToHomeFailures<String>, String>
    validateAddUserToHomePermissionExist(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(AddUserToHomeFailures.empty(
      failedValue: input,
    ));
  }
}
