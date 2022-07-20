import 'package:cybear_jinni/domain/routine/routine_cbj_failures.dart';
import 'package:cybear_jinni/infrastructure/objects/enums_cbj.dart';
import 'package:dartz/dartz.dart';

Either<RoutineCbjFailure<String>, String> validateRoutineNotEmpty(
    String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(
      RoutineCbjFailure.empty(
        failedValue: input,
      ),
    );
  }
}

Either<RoutineCbjFailure<String>, String> validateRoutineMaxNameLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      RoutineCbjFailure.exceedingLength(
        failedValue: input,
        max: maxLength,
      ),
    );
  }
}

Either<RoutineCbjFailure<String>, String>
    validateRoutineCbjBackgroundColorNotEmpty(
  String input,
) {
  return right(input);
}

Either<RoutineCbjFailure<String>, String?>
    validateRoutineCbjAutomationStringLugit(
  String? input,
) {
  return right(input);
}

Either<RoutineCbjFailure<String>, String?> validateRoutineCbjFirstNodeId(
  String? input,
) {
  return right(input);
}

Either<RoutineCbjFailure<String>, String?> validateRoutineCbjIconCodePoint(
  String? input,
) {
  return right(input);
}

Either<RoutineCbjFailure<String>, String?> validateRoutineCbjBackgroundImage(
  String? input,
) {
  return right(input);
}

Either<RoutineCbjFailure<String>, String?> validateRoutineCbjLastDateOfExecute(
  String? input,
) {
  return right(input);
}

Either<RoutineCbjFailure<String>, String?> validateRoutineCbjStateMassage(
  String? input,
) {
  return right(input);
}

Either<RoutineCbjFailure<String>, String?> validateRoutineCbjSenderDeviceOs(
  String? input,
) {
  return right(input);
}

Either<RoutineCbjFailure<String>, String?> validateRoutineCbjSenderDeviceModel(
  String? input,
) {
  return right(input);
}

Either<RoutineCbjFailure<String>, String?> validateRoutineCbjSenderId(
  String? input,
) {
  return right(input);
}

Either<RoutineCbjFailure<String>, String?> validateRoutineCbjCompUuid(
  String? input,
) {
  return right(input);
}

Either<RoutineCbjFailure<String>, String> validateRoutineCbjDeviceStateGRPC(
  String input,
) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(
      RoutineCbjFailure.empty(
        failedValue: input,
      ),
    );
  }
}

Either<RoutineCbjFailure<String>, String> validateRoutineStateExist(
  String input,
) {
  if (EnumHelperCbj.stringToDeviceState(input) != null) {
    return right(input);
  }
  return left(const RoutineCbjFailure.routineStateDoesNotExist());
}
