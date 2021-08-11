import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/infrastructure/objects/enums.dart';
import 'package:dartz/dartz.dart';

Either<CoreFailure<String>, String> validateDeviceNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(CoreFailure.empty(
      failedValue: input,
    ));
  }
}

Either<CoreFailure<String>, String> validateLastKnownIpNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(CoreFailure.empty(
      failedValue: input,
    ));
  }
}

Either<CoreFailure<String>, String> validatePowerConsumptionNotEmpty(
    String input) {
  if (double.tryParse(input) != null) {
    return right(input);
  } else {
    return left(const CoreFailure.powerConsumptionIsNotNumber());
  }
}

Either<CoreFailure<String>, String> validateRoomNameNotEmpty(String input) {
  if (input != null) {
    return right(input);
  } else {
    return left(CoreFailure.empty(failedValue: input));
  }
}

Either<CoreFailure<String>, String> validateMdnsNameNotEmpty(String input) {
  if (input != null) {
    return right(input);
  } else {
    return left(CoreFailure.empty(failedValue: input));
  }
}

Either<CoreFailure<String>, String> validateWiFiNameNotEmpty(String input) {
  if (input != null) {
    return right(input);
  } else {
    return left(CoreFailure.empty(failedValue: input));
  }
}

Either<CoreFailure<String>, String> validateDeviceMaxNameLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(CoreFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<CoreFailure<String>, String> validateDeviceStateExist(String input) {
  if (EnumHelper.stringToDeviceState(input) != null) {
    return right(input);
  }
  return left(const CoreFailure.deviceActionDoesNotExist());
}

Either<CoreFailure<String>, String> validateDeviceActionExist(String input) {
  if (EnumHelper.stringToDeviceAction(input) != null) {
    return right(input);
  }
  return left(const CoreFailure.deviceActionDoesNotExist());
}

Either<CoreFailure<String>, String> validateDeviceTypeExist(String input) {
  if (EnumHelper.stringToDt(input) != null) {
    return right(input);
  }
  return left(const CoreFailure.deviceTypeDoesNotExist());
}

Either<CoreFailure<String>, String> validateDeviceVendorExist(String input) {
  if (EnumHelper.stringToDeviceVendor(input) != null) {
    return right(input);
  }
  return left(const CoreFailure.deviceTypeDoesNotExist());
}
