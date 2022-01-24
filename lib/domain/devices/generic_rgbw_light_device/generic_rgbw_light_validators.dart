import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:dartz/dartz.dart';

Either<CoreFailure<String>, String> validateGenericRgbwLightStateNotEmpty(
  String input,
) {
  return right(input);
}

Either<CoreFailure<String>, String> validateGenericRgbwLightStringNotEmpty(
  String? input,
) {
  if (input != null) {
    return right(input);
  } else {
    return left(const CoreFailure.empty(failedValue: 'Value is null'));
  }
}

Either<CoreFailure<String>, String>
    validateGenericRgbwLightColorTemperatureNotEmpty(String? input) {
  if (input != null) {
    return right(input);
  } else {
    return left(const CoreFailure.empty(failedValue: 'Failed value is null'));
  }
}

Either<CoreFailure<String>, String> validateGenericRgbwLightBrightnessNotEmpty(
  String input,
) {
  return right(input);
}

Either<CoreFailure<String>, String> validateGenericRgbwLightAlphaNotEmpty(
  String input,
) {
  return right(input);
}

Either<CoreFailure<String>, String> validateGenericRgbwLightStringIsDouble(
  String input,
) {
  if (double.tryParse(input) != null) {
    return right(input);
  } else {
    return left(CoreFailure.empty(failedValue: input));
  }
}
