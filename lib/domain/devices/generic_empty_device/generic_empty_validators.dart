import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:dartz/dartz.dart';

Either<CoreFailure<String>, String> validateGenericEmptyStateNotEmty(
  String input,
) {
  if (input != null) {
    return right(input);
  } else {
    return left(CoreFailure.empty(failedValue: input));
  }
}
