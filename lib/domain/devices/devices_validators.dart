import 'package:cybear_jinni/domain/devices/devices_failures.dart';
import 'package:dartz/dartz.dart';

Either<DevicesFailure<String>, String> validateDeviceNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(DevicesFailure.empty(
      failedValue: input,
    ));
  }
}

Either<DevicesFailure<String>, String> validateDeviceMaxNameLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(DevicesFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

// Todo: add check that the string/state exist in the string array that we
//  created with the grpc
Either<DevicesFailure<String>, String> validateDeviceStateExist(String input) {
  return right(input);
}

// Todo: add check that the string/state exist in the string array that we
//  created with the grpc
Either<DevicesFailure<String>, String> validateDeviceActionExist(String input) {
  return right(input);
}

// Todo: add check that the string/type exist in the string array that we
//  created with the grpc
Either<DevicesFailure<String>, String> validateDeviceTypeExist(String input) {
  return right(input);
}

// Todo: add check that the device type have the state that it trying
//  to activate with the lists that we created from the grpc
Either<DevicesFailure<String>, String> validateDeviceStateInTypeExist(
    String input) {
  return right(input);
}
