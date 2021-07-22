import 'package:cybear_jinni/domain/devices/sonoff_s20/sonoff_s20_failures.dart';
import 'package:cybear_jinni/infrastructure/objects/enums.dart';
import 'package:dartz/dartz.dart';

Either<SonoffS20Failure<String>, String> validateSonoffS20NotEmpty(
    String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(SonoffS20Failure.empty(
      failedValue: input,
    ));
  }
}

Either<SonoffS20Failure<String>, String> validateSonoffS20LastKnownIpNotEmpty(
    String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(SonoffS20Failure.empty(
      failedValue: input,
    ));
  }
}

Either<SonoffS20Failure<String>, String>
    validateSonoffS20FailurePowerConsumptionNotEmpty(String input) {
  if (double.tryParse(input) != null) {
    return right(input);
  } else {
    return left(const SonoffS20Failure.powerConsumptionIsNotNumber());
  }
}

Either<SonoffS20Failure<String>, String> validateSonoffS20RoomNameNotEmpty(
    String input) {
  if (input != null) {
    return right(input);
  } else {
    return left(SonoffS20Failure.empty(failedValue: input));
  }
}

Either<SonoffS20Failure<String>, String> validateSonoffS20MdnsNameNotEmpty(
    String input) {
  if (input != null) {
    return right(input);
  } else {
    return left(SonoffS20Failure.empty(failedValue: input));
  }
}

Either<SonoffS20Failure<String>, String> validateSonoffS20WiFiNameNotEmpty(
    String input) {
  if (input != null) {
    return right(input);
  } else {
    return left(SonoffS20Failure.empty(failedValue: input));
  }
}

Either<SonoffS20Failure<String>, String> validateSonoffS20MaxNameLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(SonoffS20Failure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<SonoffS20Failure<String>, String> validateSonoffS20StateExist(
    String input) {
  if (EnumHelper.stringToDeviceState(input) != null) {
    return right(input);
  }
  return left(const SonoffS20Failure.deviceActionDoesNotExist());
}

Either<SonoffS20Failure<String>, String> validateSonoffS20ActionExist(
    String input) {
  if (EnumHelper.stringToDeviceAction(input) != null) {
    return right(input);
  }
  return left(const SonoffS20Failure.deviceActionDoesNotExist());
}

Either<SonoffS20Failure<String>, String> validateSonoffS20TypeExist(
    String input) {
  if (EnumHelper.stringToDt(input) != null) {
    return right(input);
  }
  return left(const SonoffS20Failure.deviceTypeDoesNotExist());
}
