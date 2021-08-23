import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:dartz/dartz.dart';

Either<CoreFailure<String>, String> validateGenericRgbwLightStateNotEmty(
    String input) {
  if (input != null) {
    return right(input);
  } else {
    return left(CoreFailure.empty(failedValue: input));
  }
}

Either<CoreFailure<String>, String>
    validateGenericRgbwLightColorTemperatureNotEmty(String input) {
  if (input != null) {
    return right(input);
  } else {
    return left(CoreFailure.empty(failedValue: input));
  }
}

Either<CoreFailure<String>, String> validateGenericRgbwLightBrightnessNotEmty(
    String input) {
  if (input != null) {
    return right(input);
  } else {
    return left(CoreFailure.empty(failedValue: input));
  }
}
