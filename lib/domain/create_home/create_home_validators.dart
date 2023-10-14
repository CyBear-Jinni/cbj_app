import 'package:cbj_integrations_controller/domain/core/failures.dart';
import 'package:cybear_jinni/domain/create_home/create_home_failure.dart';
import 'package:dartz/dartz.dart';

Either<CreateHomeFailure<String>, String> validateCreateHomeNotEmpty(
  String input,
) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(
      CreateHomeFailure.empty(
        failedValue: input,
      ),
    );
  }
}

Either<AuthValueFailure<String>, String> validateUserAuth() {
  return right('true');
}
