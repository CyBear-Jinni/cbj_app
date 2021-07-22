import 'package:cybear_jinni/domain/user/all_homes_of_user/all_homes_of_user_failures.dart';
import 'package:dartz/dartz.dart';

Either<AllHomesOfUserFailures<String>, String>
    validateAllHomesOfUserEmailNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(AllHomesOfUserFailures.empty(
      failedValue: input,
    ));
  }
}

Either<AllHomesOfUserFailures<String?>, String?>
    validateAllHomesOfUserNameNotEmpty(String? input) {
  if (input!.isNotEmpty) {
    return right(input);
  } else {
    return left(AllHomesOfUserFailures.empty(
      failedValue: input,
    ));
  }
}
