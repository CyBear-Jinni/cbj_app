import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_home_failure.freezed.dart';

@freezed
abstract class CreateHomeFailure<T> {
  const factory CreateHomeFailure.empty({
    required T failedValue,
  }) = _Empty;

  const factory CreateHomeFailure.unexpected({
    required T failedValue,
  }) = _Unexpected;

  const factory CreateHomeFailure.devicesUserEmailIsInvalid() =
      _DevicesUserEmailIsInvalid;

  const factory CreateHomeFailure.insufficientPermission() =
      _InsufficientPermission;

  const factory CreateHomeFailure.unableToUpdate({
    required T failedValue,
  }) = _UnableToUpdate;
}
