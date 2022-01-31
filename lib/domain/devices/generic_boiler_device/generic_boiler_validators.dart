import 'package:cybear_jinni/domain/devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';
import 'package:dartz/dartz.dart';

Either<CoreFailure<String>, String> validateGenericBoilerStateNotEmpty(
  String? input,
) {
  if (input != null) {
    return right(input);
  } else {
    return left(const CoreFailure.empty(failedValue: 'Failed value is null'));
  }
}

/// Return all the valid actions for blinds
List<String> boilerAllValidActions() {
  return [
    DeviceActions.off.toString(),
    DeviceActions.on.toString(),
  ];
}
