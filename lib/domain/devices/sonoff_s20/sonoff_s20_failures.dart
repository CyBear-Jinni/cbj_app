import 'package:freezed_annotation/freezed_annotation.dart';

part 'sonoff_s20_failures.freezed.dart';

@freezed
class SonoffS20Failure<T> {
  const factory SonoffS20Failure.empty({
    required T failedValue,
  }) = _Empty;

  const factory SonoffS20Failure.actionExcecuter({
    required T failedValue,
  }) = _ActionExcecuter;

  const factory SonoffS20Failure.exceedingLength({
    required T failedValue,
    required int max,
  }) = _ExceedingLength;

  const factory SonoffS20Failure.unexpected() = _Unexpected;

  const factory SonoffS20Failure.insufficientPermission() =
      _InsufficientPermission;

  const factory SonoffS20Failure.unableToUpdate() = _UnableToUpdate;

  const factory SonoffS20Failure.powerConsumptionIsNotNumber() =
      _PowerConsumptionIsNotNumber;

  const factory SonoffS20Failure.deviceActionDoesNotExist() =
      _DeviceActionDoesNotExist;

  const factory SonoffS20Failure.deviceTypeDoesNotExist() =
      _DeviceTypeDoesNotExist;
}
