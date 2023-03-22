import 'package:cybear_jinni/domain/generic_devices/abstract_device/core_failures.dart';
import 'package:cybear_jinni/infrastructure/core/gen/cbj_hub_server/protoc_as_dart/cbj_hub_server.pbgrpc.dart';

import 'package:dartz/dartz.dart';

Either<CoreFailure<String>, String> validateGenericSmartTvStateNotEmpty(
  String input,
) {
  return right(input);
}

Either<CoreFailure<String>, String> validateGenericSmartTvUrlValidation(
  String input,
) {
  return right(input);
}

Either<CoreFailure<String>, String>
    validateGenericSmartTvPausePlayStateValidation(
  String input,
) {
  return right(input);
}

Either<CoreFailure<String>, String>
    validateGenericSmartTvSkipBackOrForwardValidation(
  String input,
) {
  return right(input);
}

Either<CoreFailure<String>, String> validateGenericSmartTvVolumeValidation(
  String input,
) {
  return right(input);
}

/// Return all the valid actions for smart tv
List<String> smartTvAllValidActions() {
  return [
    DeviceActions.off.toString(),
    DeviceActions.on.toString(),
    DeviceActions.pausePlay.toString(),
    DeviceActions.changeVolume.toString(),
    DeviceActions.skip.toString(),
  ];
}
