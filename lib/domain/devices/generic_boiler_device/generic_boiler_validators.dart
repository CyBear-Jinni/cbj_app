import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:dartz/dartz.dart';

Either<CoreFailure<String>, String> validateGenericBoilerStateNotEmty(
  String? input,
) {
  if (input != null) {
    return right(input);
  } else {
    return left(const CoreFailure.empty(failedValue: 'Failed value is null'));
  }
}
