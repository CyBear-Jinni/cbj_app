import 'package:freezed_annotation/freezed_annotation.dart';

part 'devices_failures.freezed.dart';

@freezed
abstract class DevicesFailure<T> {
  const factory DevicesFailure.empty({
    @required T failedValue,
  }) = _Empty;

  const factory DevicesFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = _ExceedingLength;

  const factory DevicesFailure.unexpected() = _Unexpected;

  const factory DevicesFailure.insufficientPermission() =
      _InsufficientPermission;

  const factory DevicesFailure.unableToUpdate() = _UnableToUpdate;
}
