import 'package:cybear_jinni/domain/cbj_comp/cbj_comp_failures.dart';
import 'package:cybear_jinni/domain/devices/device/device_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

Either<CBJCompFailure<String>, String> validateCBJCompNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(CBJCompFailure.empty(
      failedValue: input,
    ));
  }
}

Either<CBJCompFailure<KtList<DeviceEntity>>, KtList<DeviceEntity>>
    validateCBJCompDevicesNotNull(KtList<DeviceEntity> input) {
  if (input != null) {
    return right(input);
  } else {
    return left(CBJCompFailure.empty(
      failedValue: input,
    ));
  }
}

Either<CBJCompFailure<String>, String> validateCBJCompMaxNameLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(CBJCompFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<CBJCompFailure<String>, String> validateCBJCompStateExist(String input) {
  return right(input);
}

Either<CBJCompFailure<String>, String> validateCBJCompActionExist(
    String input) {
  return right(input);
}

Either<CBJCompFailure<String>, String> validateCBJCompTypeExist(String input) {
  return right(input);
}

Either<CBJCompFailure<String>, String> validateCBJCompStateInTypeExist(
    String input) {
  return right(input);
}
