import 'package:cybear_jinni/domain/devices/esphome/esphome_failures.dart';
import 'package:cybear_jinni/infrastructure/objects/enums.dart';
import 'package:dartz/dartz.dart';

Either<EspHomeFailure<String>, String> validateEspHomeNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(EspHomeFailure.empty(
      failedValue: input,
    ));
  }
}

Either<EspHomeFailure<String>, String> validateEspHomeLastKnownIpNotEmpty(
    String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(EspHomeFailure.empty(
      failedValue: input,
    ));
  }
}

Either<EspHomeFailure<String>, String>
    validateEspHomeFailurePowerConsumptionNotEmpty(String input) {
  if (double.tryParse(input) != null) {
    return right(input);
  } else {
    return left(const EspHomeFailure.powerConsumptionIsNotNumber());
  }
}

Either<EspHomeFailure<String>, String> validateEspHomeRoomNameNotEmpty(
    String input) {
  if (input != null) {
    return right(input);
  } else {
    return left(EspHomeFailure.empty(failedValue: input));
  }
}

Either<EspHomeFailure<String>, String> validateEspHomeMdnsNameNotEmpty(
    String input) {
  if (input != null) {
    return right(input);
  } else {
    return left(EspHomeFailure.empty(failedValue: input));
  }
}

Either<EspHomeFailure<String>, String> validateEspHomeWiFiNameNotEmpty(
    String input) {
  if (input != null) {
    return right(input);
  } else {
    return left(EspHomeFailure.empty(failedValue: input));
  }
}

Either<EspHomeFailure<String>, String> validateEspHomeMaxNameLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(EspHomeFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<EspHomeFailure<String>, String> validateEspHomeStateExist(String input) {
  if (EnumHelper.stringToDeviceState(input) != null) {
    return right(input);
  }
  return left(const EspHomeFailure.deviceActionDoesNotExist());
}

Either<EspHomeFailure<String>, String> validateEspHomeActionExist(
    String input) {
  if (EnumHelper.stringToDeviceAction(input) != null) {
    return right(input);
  }
  return left(const EspHomeFailure.deviceActionDoesNotExist());
}

Either<EspHomeFailure<String>, String> validateEspHomeTypeExist(String input) {
  if (EnumHelper.stringToDt(input) != null) {
    return right(input);
  }
  return left(const EspHomeFailure.deviceTypeDoesNotExist());
}
