import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_homes_of_user_failures.freezed.dart';

@freezed
abstract class AllHomesOfUserFailures<T> {
  const factory AllHomesOfUserFailures.empty({
    required T failedValue,
  }) = _Empty;

  const factory AllHomesOfUserFailures.unexpected() = _Unexpected;
  const factory AllHomesOfUserFailures.validateEmailNotEmpty() =
      _ValidateEmailNotEmpty;

  const factory AllHomesOfUserFailures.insufficientPermission() =
      _InsufficientPermission;

  const factory AllHomesOfUserFailures.unableToUpdate() = _UnableToUpdate;
}
