import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failures.freezed.dart';

@freezed
abstract class UserFailures<T> {
  const factory UserFailures.empty({
    @required T failedValue,
  }) = _Empty;

  const factory UserFailures.unexpected() = _Unexpected;
  const factory UserFailures.validateEmailNotEmpty() = _ValidateEmailNotEmpty;

  const factory UserFailures.insufficientPermission() = _InsufficientPermission;

  const factory UserFailures.unableToUpdate() = _UnableToUpdate;
}
