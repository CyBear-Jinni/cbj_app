import 'package:cybear_jinni/domain/hub/hub_failures.dart';
import 'package:dartz/dartz.dart';

Either<HubFailures<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(HubFailures.empty(
      failedValue: input,
    ));
  }
}
