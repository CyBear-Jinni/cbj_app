import 'package:cbj_integrations_controller/infrastructure/generic_entities/generic_light_entity/generic_light_entity.dart';
import 'package:cybearjinni/domain/cbj_comp/cbj_comp_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

Either<CbjCompFailure<String>, String> validateCBJCompNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(
      CbjCompFailure.empty(
        failedValue: input,
      ),
    );
  }
}

Either<CbjCompFailure<KtList<GenericLightDE>>, KtList<GenericLightDE>>
    validateCBJCompDevicesNotNull(KtList<GenericLightDE> input) {
  return right(input);
}

Either<CbjCompFailure<String>, String> validateCBJCompMaxNameLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      CbjCompFailure.exceedingLength(
        failedValue: input,
        max: maxLength,
      ),
    );
  }
}

Either<CbjCompFailure<String>, String> validateCBJCompStateExist(String input) {
  return right(input);
}

Either<CbjCompFailure<String>, String> validateCBJCompActionExist(
  String input,
) {
  return right(input);
}

Either<CbjCompFailure<String>, String> validateCBJCompTypeExist(String input) {
  return right(input);
}

Either<CbjCompFailure<String>, String> validateCBJCompStateInTypeExist(
  String input,
) {
  return right(input);
}
