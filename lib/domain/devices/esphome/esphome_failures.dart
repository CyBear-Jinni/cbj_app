import 'package:freezed_annotation/freezed_annotation.dart';

part 'esphome_failures.freezed.dart';

@freezed
class EspHomeFailure<T> {
  const factory EspHomeFailure.empty({
    required T failedValue,
  }) = _Empty;

  const factory EspHomeFailure.actionExcecuter({
    required T failedValue,
  }) = _ActionExcecuter;

  const factory EspHomeFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = _ExceedingLength;

  const factory EspHomeFailure.unexpected() = _Unexpected;

  const factory EspHomeFailure.insufficientPermission() =
      _InsufficientPermission;

  const factory EspHomeFailure.unableToUpdate() = _UnableToUpdate;

  const factory EspHomeFailure.powerConsumptionIsNotNumber() =
      _PowerConsumptionIsNotNumber;

  const factory EspHomeFailure.deviceActionDoesNotExist() =
      _DeviceActionDoesNotExist;

  const factory EspHomeFailure.deviceTypeDoesNotExist() =
      _DeviceTypeDoesNotExist;
}
